import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/grade/grade_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GradePickerButton extends StatelessWidget {
  const GradePickerButton({super.key});

  // 선택 가능한 학기 리스트
  static const List<String> _grades = [
    '1학년 1학기',
    '1학년 2학기',
    '2학년 1학기',
    '2학년 2학기',
    '3학년 1학기',
    '3학년 2학기',
    '4학년 1학기',
    '4학년 2학기',
    '대학원',
    '기타'
  ];

  Future<void> _showGradePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();

    final selectedValue = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return GradePickerDialog(
            items: _grades, initialItem: bloc.state.formData.grade);
      },
    );

    if (selectedValue != null) {
      // setState 대신 BLoC에 이벤트 전달
      final newFormData = bloc.state.formData.copyWith(grade: selectedValue);
      final submit = bloc.state.submit.copyWith(grade: true);
      bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Bloc의 상태를 읽어 현재 선택된 학기를 표시
    final selectedGrade = context.watch<MakeRMPageBloc>().state.formData.grade;

    return InkWell(
      onTap: () => _showGradePicker(context),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedGrade.isEmpty ? '학년/학기를 선택하세요' : selectedGrade,
              style: TextStyle(
                  fontSize: 16,
                  color: selectedGrade.isEmpty
                      ? Colors.grey.shade600
                      : Colors.black),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
