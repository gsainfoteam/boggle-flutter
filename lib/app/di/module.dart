import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Singleton()
  @Named('default')
  // 1. 필요한 AuthInterceptors를 파라미터로 직접 주입받습니다.
  Dio createDefaultDio(AuthInterceptors interceptors) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://boggle.is-an.ai/',
        connectTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );
    // 2. 전역 변수 sl 대신, 주입받은 interceptors를 사용합니다.
    dio.interceptors.add(interceptors);
    return dio;
  }

  @lazySingleton
  @Named('auth')
  Dio createAuthDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.idp.gistory.me/',
      ),
    );
    return dio;
  }

  @singleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      );
}
