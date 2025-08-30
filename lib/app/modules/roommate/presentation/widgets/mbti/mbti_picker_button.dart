import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/mbti/mbti_picker_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MBTIPickerButton extends StatelessWidget {
  const MBTIPickerButton({super.key});

  // 선택 가능한 학기 리스트
  static const List<String> _mbti = [
    'ESTJ',
    'ESTP',
    'ESFJ',
    'ESFP',
    'ENTJ',
    'ENTP',
    'ENFJ',
    'ENFP',
    'ISTJ',
    'ISTP',
    'ISFJ',
    'ISFP',
    'INTJ',
    'INTP',
    'INFJ',
    'INFP',
  ];

  Future<void> _showMBTIPicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();

    final selectedValue = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return MBTIPickerList(
            items: _mbti,
            initialItem: bloc.state.formData.mbti == null
                ? ''
                : bloc.state.formData.mbti!);
      },
    );

    if (selectedValue != null) {
      // setState 대신 BLoC에 이벤트 전달
      final newFormData = bloc.state.formData.copyWith(mbti: selectedValue);
      final submit = bloc.state.submit.copyWith(mbti: true);
      bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
    }
  }

  @override
  Widget build(BuildContext context) {
    // Bloc의 상태를 읽어 현재 선택된 학기를 표시
    final selectedMbti = context.watch<MakeRMPageBloc>().state.formData.mbti;

    return InkWell(
      onTap: () => _showMBTIPicker(context),
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
              selectedMbti == null
                  ? 'MBTI 선택'
                  : selectedMbti.isEmpty
                      ? 'MBTI 선택'
                      : selectedMbti,
              style: TextStyle(
                  fontSize: 16,
                  color: selectedMbti == null
                      ? Colors.grey.shade600
                      : selectedMbti.isEmpty
                          ? Colors.black
                          : Colors.grey.shade600),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
