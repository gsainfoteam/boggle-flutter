// recruitment.dart

import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/post/presentation/widgets/tag.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/post/data/model/post_model.dart';

class Recruitment extends StatelessWidget {
  const Recruitment({
    super.key,
    required this.postModel,
  });

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    final router = context.router;

    return GestureDetector(
      onTap: () {
        router.push(PostRoute());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 46.5),
        child: Column(children: [
          Divider(
            color: const Color.fromARGB(255, 217, 217, 217),
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Container(
              // height는 내용에 따라 유연하게 조절되도록 제거하는 것이 좋음
              // height: 45,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // 왼쪽 정렬이 더 자연스러움
                  children: [
                    Text(
                      postModel.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Pretendard',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    // Row의 children 안에서 for 루프를 사용하여 Tag를 동적으로 생성
                    Row(
                      children: [
                        // postModel.tags가 List<String>과 같은 반복 가능한 객체라고 가정
                        for (int i = 0; i < postModel.tags!.length; i++)
                          Padding(
                            // 각 태그 오른쪽에만 여백을 줌
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Tag(
                              text: postModel.tags![i],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// 참고: Tag 위젯이 다음과 같이 정의되어 있다고 가정함
/*
class Tag extends StatelessWidget {
  final String tagText;
  const Tag({super.key, required this.tagText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(tagText),
    );
  }
}
*/
