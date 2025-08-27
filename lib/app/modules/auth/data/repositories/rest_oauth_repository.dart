import 'dart:convert';
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/token_request_with_code_model.dart';
import 'package:boggle_flutter/app/modules/auth/domain/entities/auth_token_entity.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/oauth_repository.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:injectable/injectable.dart';
import 'package:nonce/nonce.dart';

@Injectable(as: OAuthRepository)
class RestOAuthRepository implements OAuthRepository {
  final AuthApi _api;
  final TokenStorage _tokenStorage;

  RestOAuthRepository({
    required AuthApi api,
    required TokenStorage tokenStorage,
  })  : _api = api,
        _tokenStorage = tokenStorage;

  @override
  Future<void> login() async {
    const clientId = '5aec0c22-288b-478f-8bbc-92cfd89fc91d';
    const redirectUri = 'boggle-app://callback';
    const scopes = 'openid profile student_id email offline_access';

    // --- 정상 코드와 동일하게 state, PKCE 생성 ---
    final state = Nonce.secure().toString(); // 1. state 파라미터 생성
    final codeVerifier = Nonce.secure().toString();
    final codeChallenge = base64Url
        .encode(sha256.convert(utf8.encode(codeVerifier)).bytes)
        .replaceAll('=', '');
    final nonce = Nonce.secure().toString();

    final authorizeUri = Uri(
      scheme: 'https',
      host: 'idp.gistory.me',
      path: '/authorize',
      queryParameters: {
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'response_type': 'code',
        'scope': scopes,
        'state': state,
        'nonce': nonce,
        'code_challenge': codeChallenge,
        'code_challenge_method': 'S256',
        'prompt': 'consent',
      },
    );

    print('Requesting Auth URL with State & PKCE: ${authorizeUri.toString()}');

    try {
      final result = await FlutterWebAuth2.authenticate(
        url: authorizeUri.toString(),
        callbackUrlScheme: 'boggle-app',
      );
      print('>>>>>> Callback Result from IDP: $result');

      final uri = Uri.parse(result);

      // 4. 돌아온 state 값이 맨 처음 보낸 값과 일치하는지 반드시 확인!
      final receivedState = uri.queryParameters['state'];
      if (receivedState != state) {
        // 일치하지 않으면 보안 공격일 수 있으므로 에러 처리
        // throw InvalidAuthorizationStateException();
        throw Exception('Invalid authorization state.');
      }

      final authCode = uri.queryParameters['code'];
      if (authCode == null) {
        throw Exception('Authorization code not found.');
      }

      final response = await _api.getTokenFromCode(TokenRequestWithCodeModel(
          code: authCode,
          codeVerifier: codeVerifier,
          clientId: clientId,
          clientSecret: 'ogbqj2DanT5fGh8URqoiDYfxbJcz9XSBE4BLyxPM'));
      await _tokenStorage.saveToken(
        AuthTokenEntity(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken, // refreshToken도 있다면 저장
        ),
      );
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> logout() async {
    try {
      await _tokenStorage.logout();
    } catch (e) {
      throw Exception('로그아웃 실패: $e');
    }
  }
}
