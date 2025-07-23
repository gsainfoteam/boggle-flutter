import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _appRouter = AppRouter(); // AppRouter 인스턴스 생성

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(); // 의존성 주입 설정
  runApp(BlocProvider(
    create: (context) => sl<AuthBloc>(),
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
