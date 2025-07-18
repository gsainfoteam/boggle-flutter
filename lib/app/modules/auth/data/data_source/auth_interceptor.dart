import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/data/repository/auth_repository.dart';
import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  final AuthRepository authRepository;
  final TokenStorage tokenStorage;
  // 생성자에서 authRepository와 tokenStorage를 받기 위한 구문
  CustomInterceptors(this.authRepository, this.tokenStorage);
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = tokenStorage.getAccessToken();
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
        // 부모에서 사용하지 않은 dio를 사용함으로써 무한 반복 방지
        final dio = Dio();
        final refreshToken = await tokenStorage.getAccessToken();
        final AuthApi api = AuthApi(dio);
        if (refreshToken == null) {
          return super.onError(err, handler);
        }
        final newToken = await api.refresh(
          refreshToken,
        );
        await tokenStorage.saveToken(newToken);
        // refreshToken으로 새로운 accessToken을 저장.
        // 원래 요청 및 새로운 AccessToken 불러오기
        final originalRequest = err.requestOptions;
        final newAccessToken = newToken.accessToken;
        originalRequest.headers['Authorization'] = 'Bearer $newAccessToken';

        // 요청 다시 시작
        final response = await dio.fetch(originalRequest);
        return handler.resolve(response);
      } catch (e) {
        // refresh 실패 시 로그아웃 처리
        await authRepository.logout();
        return super.onError(err, handler);
      }
    }
    super.onError(err, handler);
  }
}
