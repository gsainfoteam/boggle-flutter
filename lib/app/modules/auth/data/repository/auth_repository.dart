import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final Dio dio;
  late final AuthApi api = AuthApi(dio);
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  late final TokenStorage tokenStorage;
  AuthRepository({
    required this.dio,
    required this.tokenStorage,
  });

  // authRepository의 메소드 정의.
  Future<void> login(
    UserModel user,
  ) async {
    final response = await api.login(
      user,
    );
    try {
      await tokenStorage.saveToken(
        response,
      );
    } catch (e) {
      throw Exception('Token 저장 실패: $e');
    }
  }

  Future<AuthTokenModel> refresh(
    AuthTokenModel refreshToken,
  ) async {
    // tokenStorage에 저장된 토큰 업데이트
    final newAccessToken = await api.refresh(
      refreshToken,
    );
    try {
      await tokenStorage.refresh(
        refreshToken.refreshToken!,
        newAccessToken.accessToken!,
      );
    } catch (e) {
      throw Exception('토큰 갱신 실패: $e');
    }

    return newAccessToken; // 갱신된 토큰 반환
  }

  Future<void> logout() async {
    try {
      await tokenStorage.logout();
    } catch (e) {
      throw Exception('로그아웃 실패: $e');
    }
    // tokenStorage에 저장된 토큰 삭제
  }
}
