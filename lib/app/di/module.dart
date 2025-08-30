import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  @Named('default')
  Dio createDefaultDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://boggle.is-an.ai/',
      ),
    );
    dio.interceptors.add(sl<AuthInterceptors>());
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
