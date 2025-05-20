import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'dart:convert';
import 'dart:typed_data';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class ActiveSymbol extends StatelessWidget {
  const ActiveSymbol({super.key, required this.index, required this.postModel});

  final int index;
  //final int imageIndex;
  final List<PostModel> postModel;

  @override
  Widget build(BuildContext context) {
    if (postModel[index].type == "active") {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 59, 207, 64), shape: BoxShape.circle),
      );
    } else if (postModel[index].type == "inactive") {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 207, 59, 59), shape: BoxShape.circle),
      );
    } else if (postModel[index].type == "hurryup") {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 174, 0), shape: BoxShape.circle),
      );
    } else // data 제대로 못 받아왔을 경우우
    {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0), shape: BoxShape.circle),
      );
    }
  }
}
