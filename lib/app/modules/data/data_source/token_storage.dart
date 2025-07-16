/* authrepository에서 
final FlutterSecureStorage storage = const FlutterSecureStorage();
  final TokenStorage tokenStorage;
이거 변수 선언 했음.
이제 해야할 건, token_storage.dart에서 토큰을 저장하는 
메소드 및 토큰 관련 다양한 메소드를 정의해야함.
*/
//login 메소드 -> 1. 로그인 api 호출 2. token을 fluttersecure storage에 저장

import 'package:boggle_flutter/app/modules/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:boggle_flutter/app/modules/data/model/auth_token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final FlutterSecureStorage storage;

  // 생성자에서 파라미터를 받기 위한 구문
  TokenStorage(this.storage);

  // TokenStorage 메소드 정의
  Future<void> saveToken(
    AuthTokenModel token,
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

  Future<void> refresh(
    String newRefreshToken,
    String newAccessToken,
  ) async {
    try {
      final refreshToken = await storage.read(key: 'refreshToken');
      if (refreshToken == null) {
        throw Exception('Refresh token이 존재하지 않습니다.');
      } else if (newRefreshToken != refreshToken) {
        throw Exception('새로운 Refresh token이 기존과 다릅니다.');
      } else {
        await storage.write(key: 'accessToken', value: newAccessToken);
      }
    } catch (e) {
      throw Exception('토큰 갱신 실패: $e');
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

  Future<AuthTokenModel?> getAccessToken() async {
    try {
      final accessToken = await storage.read(key: 'accessToken');

      if (accessToken == null) {
        return null; // 토큰이 없으면 null 반환
      } else if (accessToken.isNotEmpty) {
        return AuthTokenModel(accessToken: accessToken);
      } else {
        return null; // 토큰이 비어 있으면(문자열이 비어있음 => '' 상태) null 반환
      }
    } catch (e) {
      throw Exception('Access token을 가져오는 데 실패했습니다: $e');
    }
  }

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
  }
}
