import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

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
    Color? backgroundColor, // #DEF2FF or #4B7EFF or #FFFFFF
    required VoidCallback onSearchTap,
    required VoidCallback onEditTap,
  }) =>
      BoggleAppBar(
        backgroundColor: backgroundColor,
        actions: [
          GestureDetector(
            onTap: onSearchTap,
            behavior: HitTestBehavior.translucent,
            child: AspectRatio(
                aspectRatio: 1,
                child: Center(child: Assets.icons.search.svg())),
          ),
          GestureDetector(
            onTap: onEditTap,
            behavior: HitTestBehavior.translucent,
            child: AspectRatio(
                aspectRatio: 1,
                child: Center(child: Assets.icons.editPencilOff.svg())),
          ),
        ],
      );
  factory BoggleAppBar.compact({
    Color? backgroundColor, // #DEF2FF or #4B7EFF or #FFFFFF
    VoidCallback? onArrowLeftTap,
  }) =>
      BoggleAppBar(
        backgroundColor: backgroundColor,
        leading: GestureDetector(
          onTap: onArrowLeftTap,
          behavior: HitTestBehavior.translucent,
          child: AspectRatio(
              aspectRatio: 1,
              child: Center(
                  child: Assets.icons.navArrowLeft.svg(height: 24, width: 24))),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SafeArea(
        child: SizedBox(
          height: 50,
          // leading 값의 존재 여부에 따라 Row의 구성을 다르게 함
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. leading 프로퍼티에 값이 있다면, leading 위젯을 보여준다.
              if (leading != null)
                Padding(
                  // AppBar의 기본 leading 간격과 비슷하게 조절
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: leading!,
                ),

              // 2. leading 프로퍼티에 값이 없다면 (null 이라면), 기존 로고를 보여준다.
              if (leading == null)
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Assets.images.logo.svg(
                    width: 121,
                    height: 50,
                  ),
                ),

              // 3. Spacer와 actions는 공통으로 사용
              const Spacer(),
              ...actions,
              // actions가 있을 경우 오른쪽에도 여백을 추가하여 대칭을 맞춤
              if (actions.isNotEmpty)
                const SizedBox(
                  width: 8,
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(53);
}
