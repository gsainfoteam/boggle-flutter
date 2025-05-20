import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';

@RoutePage()
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainRoute(),
        Profile_others_Route(),
        CategoryRoute(),
        ChatRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: const BoggleAppBar(),
          body: Container(),
          bottomNavigationBar: const BoggleNav(),
        );
      },
    );
  }
}
