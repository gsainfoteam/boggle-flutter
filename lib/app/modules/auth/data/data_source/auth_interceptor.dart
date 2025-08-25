import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptors extends Interceptor {
  final TokenStorage tokenStorage;
  final Dio _dio;
  AuthInterceptors(this.tokenStorage, @Named('refresh') this._dio);
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final tokens = await tokenStorage.getAccessToken();
    final accessToken = tokens?.accessToken;
    options.headers['Authorization'] = 'Bearer $accessToken';
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 &&
        err.requestOptions.path != '/auth/refresh') {
      // refresh 동작이 아닐 때. 401 에러가 발생함.
      // refresh 토큰이 만료되지 않았다면 자동으로 refresh 동작 실행
      try {
        final refreshToken = await tokenStorage.getRefreshToken();
        if (refreshToken == null) {
          return super.onError(err, handler);
        }
        final authRepository = sl<AuthRepository>();
        final newTokens = await authRepository.refresh(refreshToken);
        // refreshToken으로 새로운 accessToken을 저장.
        // 원래 요청 및 새로운 AccessToken 불러오기
        final originalRequest = err.requestOptions;
        final newAccessToken = newTokens.accessToken;
        originalRequest.headers['Authorization'] = 'Bearer $newAccessToken';

        // 요청 다시 시작
        final response = await _dio.fetch(originalRequest);
        return handler.resolve(response);
      } catch (e) {
        // refresh 실패 시 로그아웃 처리
        sl<AuthBloc>().add(const AuthEvent.logout());
        await tokenStorage.logout();
        return super.onError(err, handler);
      }
    }
    super.onError(err, handler);
  }
}
