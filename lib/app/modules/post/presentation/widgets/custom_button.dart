import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        // 1. isSelected와 상관없이 항상 파란색 계열 색상으로 고정
        backgroundColor: const Color(0xFFEDF2FF),
        foregroundColor: const Color(0xFF4B7EFF),
        side: const BorderSide(
          color: Color(0xFF4B7EFF),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(140, 45),
      ),
      child: Text(title),
    );
  }
}
