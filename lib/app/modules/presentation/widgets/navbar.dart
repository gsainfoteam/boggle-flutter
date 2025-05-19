import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    // required this.router,
  });

  // final StackRouter router;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
          height: 64,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                icon: Assets.icons.homeSimpleOn.svg(),
                onPressed: () {
                  //router.navigate(const HomeRoute());
                }),
            IconButton(
                icon: Assets.icons.viewGridOn.svg(),
                onPressed: () {
                  //router.navigate(BoardRoute(postModel: postModel, index: index));
                }),
            IconButton(
                icon: Assets.icons.message3LineOn.svg(),
                onPressed: () {
                  //router.navigate(const HomeRoute());
                }),
            IconButton(
                icon: Assets.icons.userCircleOn.svg(),
                onPressed: () {
                  //router.navigate(BoardRoute(postModel: postModel, index: index));
                }),
          ])),
    );
  }
}
