import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/age/age_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgePickerButton extends StatelessWidget {
  const AgePickerButton({super.key});

  // 선택 가능한 학기 리스트
  static const List<int> _age = [
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
  ];

  Future<void> _showAgePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();

    final selectedValue = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return AgePickerDialog(
            items: _age, initialItem: bloc.state.formData.age);
      },
    );

    if (selectedValue != null) {
      // setState 대신 BLoC에 이벤트 전달
      final newFormData = bloc.state.formData.copyWith(age: selectedValue);
      final submit = bloc.state.submit.copyWith(age: true);
      bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Bloc의 상태를 읽어 현재 선택된 학기를 표시
    final selectedAge = context.watch<MakeRMPageBloc>().state.formData.age;

    return InkWell(
      onTap: () => _showAgePicker(context),
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
              selectedAge.toString().isEmpty
                  ? '나이를 선택하세요'
                  : selectedAge.toString(),
              style: TextStyle(
                  fontSize: 16,
                  color:
                      selectedAge == 0 ? Colors.grey.shade600 : Colors.black),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
