import 'package:flutter/material.dart';

class RoomLivingNowButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const RoomLivingNowButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // 1. 부모로부터 받은 함수를 그대로 실행
      style: ElevatedButton.styleFrom(
        elevation: 0,
        // 2. isSelected 값에 따라 스타일 결정
        backgroundColor: isSelected ? const Color(0xFFEDF2FF) : Colors.white,
        foregroundColor:
            isSelected ? const Color(0xFF4B7EFF) : const Color(0xFF7A7A7A),
        side: BorderSide(
          color: isSelected ? const Color(0xFF4B7EFF) : const Color(0xFFD9D9D9),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(80, 40),
      ),
      child: Text(title),
    );
  }
}
