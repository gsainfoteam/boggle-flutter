// progress_button.dart

import 'package:flutter/material.dart';

class ProgressButtons extends StatelessWidget {
  final VoidCallback? onPreviousPressed;
  final VoidCallback? onNextPressed;
  final String nextButtonText;
  final bool isNextEnabled;
  final bool showPreviousButton;

  const ProgressButtons({
    super.key,
    this.onPreviousPressed,
    this.onNextPressed,
    required this.nextButtonText,
    this.isNextEnabled = true,
    this.showPreviousButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // '이전' 버튼 (showPreviousButton이 true일 때만 보임)
          if (showPreviousButton)
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(minimumSize: const Size(0, 50)),
                onPressed: onPreviousPressed,
                child: const Text('이전'),
              ),
            ),
          if (showPreviousButton) const SizedBox(width: 16),

          // '다음' 또는 다른 텍스트의 버튼
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                backgroundColor: isNextEnabled ? Colors.blue : Colors.grey,
                foregroundColor: Colors.white,
              ),
              // isNextEnabled가 true일 때만 onNextPressed를 호출, 아니면 null로 비활성화
              onPressed: isNextEnabled ? onNextPressed : null,
              child: Text(nextButtonText),
            ),
          ),
        ],
      ),
    );
  }
}
