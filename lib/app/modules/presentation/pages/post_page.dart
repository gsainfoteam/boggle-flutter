import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/notice_thumbnail.dart';
//import 'package:boggle_flutter/app/modules/presentation/widgets/tag.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_Nav.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
    required this.postModel,
    required this.index,
    //required this.imageIndex,
  });
  final List<PostModel> postModel;
  final int index;
  //final int imageIndex;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    String Date = DateFormat('yyyy.mm.dd').format(postModel[index].createdAt);
    /*Uint8List image = Uint8List(0);
    if (postModel[index].images != null &&
        postModel[index].images!.isNotEmpty) {
      image = base64Decode(postModel[index].images![imageIndex].image);
    }*/

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 24,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            postModel[index].title,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                postModel[index].createdBy.nickname,
                style: const TextStyle(
                  color: Color.fromARGB(255, 151, 151, 151),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                Date,
                style: const TextStyle(
                  color: Color.fromARGB(255, 151, 151, 151),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Tag(
                postModel: postModel,
                index: index,
              ),
              const SizedBox(width: 5),
              Tag(
                postModel: postModel,
                index: index,
              ),
              const SizedBox(width: 5),
              Tag(
                postModel: postModel,
                index: index,
              )
            ],
          ),
          const SizedBox(height: 24),
          if (image.isNotEmpty)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // 이미지의 모서리를 둥글게 설정
                child: Image.memory(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(
            height: 24,
          ),
          Text(
            postModel[index].body,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}
