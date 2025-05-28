import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.postModel,
    required this.index,
  });
  final List<PostModel> postModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: index,
        itemBuilder: (context, index) {
          return NoticeThumbnail(index: index, postModel: postModel);
        });
  }
}
