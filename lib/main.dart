import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/data/repository/rest_auth_repository.dart';
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final _appRouter = AppRouter(); // AppRouter 인스턴스 생성

void main() {
  final tokenStorage = TokenStorage(const FlutterSecureStorage());
  final dio = Dio(
      BaseOptions(baseUrl: 'https://privately-suited-peacock.ngrok-free.app/'));
  dio.interceptors.add(CustomInterceptors(
      AuthRepository(dio: dio, tokenStorage: tokenStorage), tokenStorage));
  final authRepository = AuthRepository(dio: dio, tokenStorage: tokenStorage);
  runApp(BlocProvider(
    create: (context) => AuthBloc(authRepository, tokenStorage),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BOGGLE_FLUTTER',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
