import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
    required this.postModel,
    required this.index,
  });
  final List<PostModel> postModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    final String title = postModel[index].title;
    final String content = postModel[index].content;
    final String type = postModel[index].type;
    final List<String> tags = postModel[index].tags;
    final String author = postModel[index].author;
    final List<UserModel> participants = postModel[index].participants;

    return ListView(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 330,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
            ),
          ), /*Image.memory(
                        image,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      )*/
        ),
        const SizedBox(
          height: 15,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("")],
        ),
      ],
    );
  }
}
