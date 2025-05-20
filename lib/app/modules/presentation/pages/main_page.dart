import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';

// main.dart 를 실행했을 때, 각 page들을 auto_route로 연결해주는 역할
// + StackRouter 를 자동으로 해주는 역할. 이 page에서 child만 바뀌며
// 다른 곳으로 연결될 다른 page들을 가져온다.

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainRoute(),
        //CategoryRoute(),
        //ChatRoute(),
        Profile_others_Route(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: const BoggleAppBar(),
          body: child,
          bottomNavigationBar: BoggleNav(
            tabsRouter: tabsRouter,
          ),
        );
      },
    );
  }
}
