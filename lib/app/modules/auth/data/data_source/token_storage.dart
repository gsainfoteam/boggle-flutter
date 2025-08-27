import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:boggle_flutter/app/modules/auth/domain/entities/auth_token_entity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class TokenStorage {
  final FlutterSecureStorage storage;

  // 생성자에서 파라미터를 받기 위한 구문
  TokenStorage(this.storage);

  // TokenStorage 메소드 정의
  Future<void> saveToken(
    AuthTokenEntity token,
  ) async {
    try {
      await storage.write(
        key: 'accessToken',
        value: token.accessToken,
      );
      await storage.write(
        key: 'refreshToken',
        value: token.refreshToken,
      );
    } catch (e) {
      throw Exception('토큰 저장 실패: $e');
    }
  }

  Future<void> logout() async {
    try {
      await storage.delete(key: 'accessToken');
      await storage.delete(key: 'refreshToken');
    } catch (e) {
      throw Exception('로그아웃 실패: $e');
    }
  }

  Future<AuthTokenEntity?> getAccessToken() async {
    try {
      final accessToken = await storage.read(key: 'accessToken');

      if (accessToken == null) {
        return null; // 토큰이 없으면 null 반환
      } else if (accessToken.isNotEmpty) {
        return AuthTokenEntity(accessToken: accessToken);
      } else {
        return null; // 토큰이 비어 있으면(문자열이 비어있음 => '' 상태) null 반환
      }
    } catch (e) {
      throw Exception('Access token을 가져오는 데 실패했습니다: $e');
    }
  }
  //Idp 도입으로 인해 사용하지 않음. 보류
  /*
  Future<AuthTokenModel?> getRefreshToken() async {
    try {
      final refreshToken = await storage.read(key: 'refreshToken');

      if (refreshToken == null) {
        return null; // 토큰이 없으면 null 반환
      } else if (refreshToken.isNotEmpty) {
        return AuthTokenModel(refreshToken: refreshToken);
      } else {
        return null; // 토큰이 비어 있으면(문자열이 비어있음 => '' 상태) null 반환
      }
    } catch (e) {
      throw Exception('Refresh token을 가져오는 데 실패했습니다: $e');
    }
  }*/
}
