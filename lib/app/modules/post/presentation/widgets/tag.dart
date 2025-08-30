import 'package:flutter/material.dart';

//import 'package:infoteam_app/routes/app_router.gr.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.text,
  });

  //final int imageIndex;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 22,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 201, 216, 255),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            fontFamily: 'Pretendard',
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
