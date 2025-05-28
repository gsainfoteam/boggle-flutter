import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/tag.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/active_symbol.dart';
import 'dart:convert';
import 'dart:typed_data';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class NoticeThumbnail extends StatelessWidget {
  const NoticeThumbnail({
    super.key,
    required this.index,
    //required this.imageIndex,
    required this.postModel,
  });

  final int index;
  //final int imageIndex;
  final List<PostModel> postModel;

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    final title = postModel[index].title;
    final int participants = postModel[index].participants.length;
    final int maxParticipants = postModel[index].maxPaticipants;
    /*final List<PostListImageModel>? postListImageModel =postModel[index].images;
    Uint8List image = Assets.images.dummy.image;
    if (postListImageModel != null && postListImageModel.isNotEmpty) {
      image = base64Decode(postListImageModel[imageIndex].image); //index
    }*/
    return GestureDetector(
      onTap: () {
        /*router.push(PostRoute(
          postModel: postModel,
          index: index,
        ));*/
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Container(
            height: 95,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 13,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tag(
                          index: index,
                          postModel: postModel,
                          type: "category",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ActiveSymbol(
                              index: index,
                              postModel: postModel,
                            ),
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const Text("내용 미리보기"),
                        Row(
                          children: [
                            Assets.icons.userLine.svg(),
                            Text(
                              "$participants/$maxParticipants",
                              style: const TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox()),
                if (true) //image.isNotEmpty)
                  Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 95,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 217, 217, 217),
                        ),
                      ), /*Image.memory(
                          image,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        )*/
                    ),
                  ),
              ],
            )),
      ),
    );
  }
}
