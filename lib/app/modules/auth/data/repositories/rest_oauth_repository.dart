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
    //const clientSecret = '5aec0c22-288b-478f-8bbc-92cfd89fc91d';
    const redirectUri = 'boggle-app://callback';
    const scopes = 'profile student_id email';
    final state = Nonce.secure().toString();
    final codeVerifier = Nonce.secure().toString();
    final codeChallenge = base64Url
        .encode(sha256.convert(utf8.encode(codeVerifier)).bytes)
        .replaceAll('=', '');

    final queryParams = {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'scope': scopes,
      'state': state,
      'code_challenge': codeChallenge,
      'code_challenge_method': 'plain',
    };

    final queryString = queryParams.entries
        .map((entry) =>
            '${Uri.encodeComponent(entry.key)}=${Uri.encodeComponent(entry.value)}')
        .join('&');

    final authorizeUri = Uri(
      scheme: 'https',
      host: 'idp.gistory.me',
      path: '/authorize',
    ).replace(query: queryString);

    print('Requesting FINAL Auth URL: ${authorizeUri.toString()}');

    try {
      final result = await FlutterWebAuth2.authenticate(
        url: authorizeUri.toString(),
        callbackUrlScheme: 'boggle-app',
      );
      print('>>>>>> Callback Result from IDP: $result');
      final uri = Uri.parse(result);

      final receivedState = uri.queryParameters['state'];
      if (receivedState != state) throw Exception('Invalid state');

      final authCode = uri.queryParameters['code'];
      if (authCode == null) throw Exception('Authorization code not found.');

      final response = await _api.getTokenFromCode(TokenRequestWithCodeModel(
        code: authCode,
        codeVerifier: codeVerifier,
        clientId: clientId,
        //clientSecret: clientSecret,
      ));

      await _tokenStorage.saveToken(
        AuthTokenEntity(
          accessToken: response.accessToken,
          refreshToken: response.refreshToken,
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
