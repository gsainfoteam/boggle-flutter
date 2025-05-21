import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class ActiveSymbol extends StatelessWidget {
  ActiveSymbol({super.key, required this.index, required this.postModel});

  final int index;
  //final int imageIndex;
  final List<PostModel> postModel;
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    DateTime hurry =
        postModel[index].deadline.subtract(const Duration(days: 3));
    if (today.isBefore(hurry)) {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 59, 207, 64), shape: BoxShape.circle),
      );
    } else if (today.isBefore(postModel[index].deadline)) {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 174, 0), shape: BoxShape.circle),
      );
    } else if (today.isAfter(postModel[index].deadline)) {
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 207, 59, 59), shape: BoxShape.circle),
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
