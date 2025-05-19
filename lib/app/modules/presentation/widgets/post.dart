import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
//import 'package:infoteam_app/app/modules/data/model/post_list_image_model.dart';
//import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'dart:convert';
import 'dart:typed_data';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    /*required this.index,
    required this.imageIndex,*/
  });

  /*final int index;
  final int imageIndex;*/

  @override
  Widget build(BuildContext context) {
    //final router = context.router;
    /*final List<PostListImageModel>? postListImageModel =
        postModel[index].images;
    Uint8List image = Assets.images.dummy.image;
    if (postListImageModel != null && postListImageModel.isNotEmpty) {
      image = base64Decode(postListImageModel[imageIndex].image); //index
    }*/
    return GestureDetector(
      onTap: () {
        /*router.push(PostRoute(
            postModel: postModel,
            index: index,
            imageIndex: postModel[index].images!.length - 1));*/
      },
      child: Container(
        height: 154.36,
        width: 352.01,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 222, 242, 255),
          borderRadius: BorderRadius.circular(9.41),
        ),
        child: Padding(
            padding: const EdgeInsets.only(
              left: 9.41,
              right: 9.41,
              top: 13.65,
              bottom: 13.65,
            ),
            child: Row(
              children: [
                Container(
                    child: const Column(
                  children: [
                    Text("제목",
                        style: TextStyle(
                          fontSize: 18.82,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                )),
                const SizedBox(width: 10),
                Container(
                  width: 99.86,
                  height: 127.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.41),
                    /*image: DecorationImage(
                      image: Assets.images.dummy.image.image
                      fit: BoxFit.cover,
                    ),*/
                    color: const Color.fromARGB(255, 23, 67, 144),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
