// 디자인 변경으로 인한 삭제. 추후 재논의 예정
/*import 'package:boggle_flutter/app/modules/post/data/model/post_model.dart';
import 'package:flutter/material.dart';

class ActiveSymbol extends StatelessWidget {
  const ActiveSymbol({super.key, required this.index, required this.postModel});

  final int index;
  final List<PostModel> postModel;
  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final DateTime deadline = postModel[index].deadline;
    // hurry는 마감 날짜 3일 전
    final DateTime hurry = deadline.subtract(const Duration(days: 3));
    Color symbolColor;

    if (today.isBefore(hurry)) {
      symbolColor = const Color.fromARGB(255, 59, 207, 64);
    } else if (today.isBefore(deadline)) {
      symbolColor = const Color.fromARGB(255, 255, 174, 0);
    } else {
      symbolColor = const Color.fromARGB(255, 207, 59, 59);
    }

    return _buildSymbol(symbolColor);
  }

  Widget _buildSymbol(Color color) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
*/
