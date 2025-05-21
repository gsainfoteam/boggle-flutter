import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
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
            //imageIndex: postModel[index].images!.length - 1
            ));*/ 
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Container(
          height: 95,
          color:const Color.fromARGB(255, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 13,
                child: Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox()
              ),
              Expanded(
                flex: 5,
                child:
              ),
            ],)
        ),
      ),
    );
  }
}
