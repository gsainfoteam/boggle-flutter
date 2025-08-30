// ignore_for_file: deprecated_member_use_from_same_package

import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final String title;
  // icon 타입을 Widget에서 SvgGenImage로 변경
  final SvgGenImage icon;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  // 버튼의 '눌림' 상태를 기억할 변수
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    // 색상 정의
    const Color whiteColor = Colors.white;
    const Color blueColor = Colors.blue;

    final Color iconColor =
        _isPressed ? whiteColor : blueColor; // 눌렸을 때: 기본 색상 반전

    final Color cardColor = _isPressed ? blueColor : whiteColor;
    final Color textColor = _isPressed ? whiteColor : blueColor;

    // InkWell 대신 GestureDetector를 사용하여 세밀한 터치 이벤트 제어
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true), // 누르는 순간
      onTapUp: (_) {
        // 떼는 순간
        setState(() => _isPressed = false);
        widget.onPressed(); // 실제 로직 실행
      },
      onTapCancel: () => setState(() => _isPressed = false), // 취소되는 순간
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 결정된 색상으로 아이콘을 그림
            widget.icon.svg(
              width: 50,
              height: 50,
              color: iconColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
