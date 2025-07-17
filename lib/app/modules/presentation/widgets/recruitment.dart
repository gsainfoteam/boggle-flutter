import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';

class Recruitment extends StatelessWidget {
  const Recruitment({
    super.key,
    required this.postModel,
    required this.index,
  });
  final int index;
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    /*final List<PostListImageModel>? postListImageModel =postModel[index].images;
    Uint8List image = Assets.images.dummy.image;
    if (postListImageModel != null && postListImageModel.isNotEmpty) {
      image = base64Decode(postListImageModel[imageIndex].image); //index
    }*/
    return GestureDetector(
      onTap: () {
        router.push(PostRoute());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Container(
            height: 95,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 20,
                          width: 76,
                          color: const Color.fromARGB(255, 75, 126, 255),
                          child: Center(
                              child: Text("#공동구매",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 59, 207, 64),
                                ),
                              ),
                            ),
                            Text("제목",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Text("내용 미리보기",
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),
                            )),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Assets.icons.userLine.svg(
                              height: 20,
                              width: 20,
                            ),
                            Text("NN/NN",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 0, 0, 0))),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 95,
                      )),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 217, 217, 217),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
