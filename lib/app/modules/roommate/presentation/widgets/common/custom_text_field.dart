// custom_text_field.dart

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? initialValue;
  final String hintText;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final int? maxLines; // maxLines 파라미터 추가
  final int? minLines; // minLines 파라미터 추가

  // 1. 기본 생성자를 private으로 변경
  const CustomTextField._({
    super.key,
    this.initialValue,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.keyboardType,
    this.maxLines,
    this.minLines,
  });

  // 2. '제목'용 한 줄 텍스트 필드를 위한 factory 생성자
  factory CustomTextField.title({
    Key? key,
    String? initialValue,
    required String hintText,
    required ValueChanged<String> onChanged,
    FormFieldValidator<String>? validator,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      hintText: hintText,
      onChanged: onChanged,
      validator: validator,
      maxLines: 1, // 한 줄로 제한
      minLines: 1,
    );
  }

  // 3. '추가 정보'용 여러 줄 텍스트 필드를 위한 factory 생성자
  factory CustomTextField.content({
    Key? key,
    String? initialValue,
    required String hintText,
    required ValueChanged<String> onChanged,
    FormFieldValidator<String>? validator,
  }) {
    return CustomTextField._(
      key: key,
      initialValue: initialValue,
      hintText: hintText,
      onChanged: onChanged,
      validator: validator,
      maxLines: 8, // 8줄 높이로 설정
      minLines: 5, // 최소 5줄 높이 확보
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      ),
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      // 4. 생성자로부터 받은 maxLines, minLines 값을 TextFormField에 적용
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
