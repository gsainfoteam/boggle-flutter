import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/semester/semester_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SemesterPickerButton extends StatelessWidget {
  const SemesterPickerButton({super.key});

  // 선택 가능한 학기 리스트
  static const List<String> _semesters = [
    '2025 봄학기',
    '2025 여름학기',
    '2025 가을학기',
    '2025 겨울학기',
    '2026 봄학기',
    '2026 여름학기',
    '2026 가을학기',
    '2026 겨울학기',
    '2027 봄학기',
    '2027 여름학기',
    '2027 가을학기',
    '2027 겨울학기',
  ];

  Future<void> _showSemesterPicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();

    final selectedValue = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SemesterPickerDialog(
            items: _semesters, initialItem: bloc.state.formData.semester);
      },
    );

    if (selectedValue != null) {
      // setState 대신 BLoC에 이벤트 전달
      final newFormData = bloc.state.formData.copyWith(semester: selectedValue);
      final submit = bloc.state.submit.copyWith(semester: true);
      bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Bloc의 상태를 읽어 현재 선택된 학기를 표시
    final selectedSemester =
        context.watch<MakeRMPageBloc>().state.formData.semester;

    return InkWell(
      onTap: () => _showSemesterPicker(context),
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
              selectedSemester.isEmpty ? '학년/학기를 선택하세요' : selectedSemester,
              style: TextStyle(
                  fontSize: 16,
                  color: selectedSemester.isEmpty
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
