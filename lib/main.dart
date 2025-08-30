import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

final _appRouter = AppRouter(); // AppRouter 인스턴스 생성

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting(); // 시간 intl 설정
  configureDependencies(); // 의존성 주입 설정
  runApp(BlocProvider(
    create: (context) => sl<AuthBloc>()..add(const AuthEvent.appStart()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authenticate: () {
              // 인증된 상태로 변경되면 홈 화면으로 이동
              _appRouter.replaceAll([const PostRoute()]);
            },
            unAuthenticate: () {
              // 인증되지 않은 상태로 변경되면 로그인 화면으로 이동
              _appRouter.replaceAll([const LoginRoute()]);
            },
          );
        },
        child: MaterialApp.router(
          title: 'BOGGLE_FLUTTER',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ));
  }
}
