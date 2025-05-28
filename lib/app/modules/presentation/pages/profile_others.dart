import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Profile_others_Page extends StatelessWidget {
  const Profile_others_Page({
    super.key,
    required this.index,
    required this.postModel,
    required this.userModel,
  });

  final int index;
  final List<PostModel> postModel;
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: const BoggleAppBar(),
      body: Column(
        children: [
          Container(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 217, 217, 217),
                  ),
                ),
              ),
              const Spacer(flex: 5),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "학번",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "학과",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "이메일",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 9),
              Padding(
                padding:
                    const EdgeInsets.only(top: 6.5, bottom: 6.5, right: 25),
                child: Column(
                  children: [
                    Assets.icons.heart3LineOff.svg(
                      width: 40,
                      height: 40,
                    ),
                    const Text(
                      "100",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
          const SizedBox(height: 46),
          ListView.builder(
            itemCount: 3, //index,
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const BoggleAppBar(),
    );
  }
}
