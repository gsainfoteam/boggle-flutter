import 'package:flutter/material.dart';
import 'package:boggle_flutter/routes/app_router.dart';

final _appRouter = AppRouter(); // AppRouter 인스턴스 생성

void main() {
  runApp(const MyApp());
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
