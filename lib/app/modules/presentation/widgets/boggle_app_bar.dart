import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';


class BoggleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BoggleAppBar({
    super.key,
    this.actions = const [],
    this.leading,
    this.backgroundColor,
  });

  final List<Widget> actions;
  final Widget? leading;
  final Color? backgroundColor;

  factory BoggleAppBar.main({
    required VoidCallback onTapSearch,
    required VoidCallback onTapWrite,
    Color? backgroundColor, // #DEF2FF or #4B7EFF or #FFFFFF
  }) =>
      BoggleAppBar(
        backgroundColor: backgroundColor,
        actions: [
          GestureDetector(
            onTap: onTapSearch,
            behavior: HitTestBehavior.translucent,
            child: AspectRatio(
                aspectRatio: 1,
                child: Center(child: Assets.icons.search.svg())),
          ),
          GestureDetector(
            onTap: onTapWrite,
            behavior: HitTestBehavior.translucent,
            child: AspectRatio(
                aspectRatio: 1,
                child: Center(child: Assets.icons.editPencilOff.svg())),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SafeArea(
          child: SizedBox(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 17,
            ),
            Assets.images.logo.svg(
              width: 121,
              height: 50,
            ),
            const Spacer(),
            ...actions,
          ],
        ),
      )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(53);
}
