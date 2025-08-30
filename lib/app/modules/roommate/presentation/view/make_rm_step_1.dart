// make_rm_step_1.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/age/age_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/grade/grade_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/mbti/mbti_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep1 extends StatelessWidget {
  const MakeRMStep1({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. BlocBuilder로 감싸서 BLoC의 상태 변화에 따라 UI를 다시 그리도록 함
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormRow(
                label: '성별',
                isRequired: true,
                // 성별 선택 버튼들을 자식으로 전달
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '남자',
                      isSelected: state.formData.gender == '남자',
                      // 4. BLoC 로직을 여기서 콜백으로 주입
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(gender: '남자');
                        final submit = bloc.state.submit.copyWith(gender: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '여자',
                      isSelected: state.formData.gender == '여자',
                      // 4. BLoC 로직을 여기서 콜백으로 주입
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(gender: '여자');
                        final submit = bloc.state.submit.copyWith(gender: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '학년',
                isRequired: true,
                child: GradePickerButton(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '나이',
                isRequired: true,
                child: AgePickerButton(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: 'MBTI',
                child: const MBTIPickerButton(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFormRow({
    required String label,
    bool isRequired = false,
    required Widget child,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 라벨 부분: 고정된 너비를 주어 정렬을 맞춤
        SizedBox(
          width: 80,
          child: Row(
            children: [
              Text(label,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              if (isRequired)
                const Text('*',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
            ],
          ),
        ),
        // 입력 필드 부분: 남은 공간을 모두 차지
        Expanded(child: child),
      ],
    );
  }
}
