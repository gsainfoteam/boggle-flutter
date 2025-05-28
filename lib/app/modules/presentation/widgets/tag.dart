import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class Tag extends StatelessWidget {
  Tag({
    super.key,
    required this.index,
    required this.postModel,
    required this.type,
  });

  final int index;
  final List<PostModel> postModel;
  final String type;
  late String tag;
  late int tagIndex = postModel[index].tags.length;
  @override
  Widget build(BuildContext context) {
    if (type == "category") {
      tag = postModel[index].type;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 21,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 75, 126, 255),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text("#$tag",
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w700,
                fontSize: 13,
              )),
        ),
      );
    } else if (type == "tags") {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tagIndex,
            itemBuilder: (context, index) {
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                    height: 21,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 75, 126, 255),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text("#$tag",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ))),
              );
              return null;
            },
          ));
    } else {
      tag = "dummy";
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 21,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 75, 126, 255),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text("#$tag",
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w700,
                fontSize: 13,
              )),
        ),
      );
    }
  }
}
