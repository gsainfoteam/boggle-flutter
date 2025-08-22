import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class RestAuthRepository implements AuthRepository {
  final AuthApi _api;
  final TokenStorage _tokenStorage;
  RestAuthRepository({
    required AuthApi api,
    required TokenStorage tokenStorage,
  })  : _tokenStorage = tokenStorage,
        _api = api;

  // authRepository의 메소드 정의.
  @override
  Future<void> login(
    String id,
    String password,
  ) async {
    final response = await _api.login(id, password);
    try {
      await _tokenStorage.saveToken(
        response,
      );
    } catch (e) {
      throw Exception('Token 저장 실패: $e');
    }
  }

  @override
  Future<AuthTokenModel> refresh(
    AuthTokenModel refreshToken,
  ) async {
    // tokenStorage에 저장된 토큰 업데이트
    final newTokens = await _api.refresh(
      refreshToken,
    );
    try {
      await _tokenStorage.saveToken(newTokens);
    } catch (e) {
      throw Exception('토큰 갱신 실패: $e');
    }

    return newTokens; // 갱신된 토큰 반환
  }

  @override
  Future<void> logout() async {
    try {
      await _tokenStorage.logout();
    } catch (e) {
      throw Exception('로그아웃 실패: $e');
    }
    // tokenStorage에 저장된 토큰 삭제
  }
}
