import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BoggleNav extends StatelessWidget {
  const BoggleNav({
    super.key,
    required this.tabsRouter,
  });

  final tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      items: [
        // Home Tab
        BottomNavigationBarItem(
          icon: _getIcon(tabsRouter.activeIndex == 0, "homeSimple"),
          label: 'home',
        ),
        // Category Tab
        BottomNavigationBarItem(
          icon: _getIcon(tabsRouter.activeIndex == 1, "viewGrid"),
          label: 'category',
        ),
        // Chat Tab
        BottomNavigationBarItem(
          icon: _getIcon(tabsRouter.activeIndex == 2, "message3Line"),
          label: 'chat',
        ),
        // User Tab
        BottomNavigationBarItem(
          icon: _getIcon(tabsRouter.activeIndex == 3, "userCircle"),
          label: 'user',
        ),
      ],
    );
  }

  Widget _getIcon(bool isActive, String iconName) {
    switch (iconName) {
      case 'homeSimple':
        return isActive
            ? Assets.icons.homeSimpleOn.svg()
            : Assets.icons.homeSimpleOff.svg();
      case 'viewGrid':
        return isActive
            ? Assets.icons.viewGridOn.svg()
            : Assets.icons.viewGridOff.svg();
      case 'message3Line':
        return isActive
            ? Assets.icons.message3LineOn.svg()
            : Assets.icons.message3LineOff.svg();
      case 'userCircle':
        return isActive
            ? Assets.icons.userCircleOn.svg()
            : Assets.icons.userCircleOff.svg();
      default:
        return const SizedBox(); // fallback
    }
  }
}
