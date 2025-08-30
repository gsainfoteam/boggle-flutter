// make_rm_step_7.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/age/age_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/grade/grade_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/select_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/sleepTime/sleep_time_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/wakeUpTime/wake_up_time_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep7 extends StatelessWidget {
  const MakeRMStep7({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('*',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0), fontSize: 20)),
                  Text('필수',
                      style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 122),
                          fontSize: 15)),
                ],
              ),
              _buildFormRow(
                label: '학년',
                isRequired: true,
                child: GradePickerButton.roommate(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '나이',
                isRequired: true,
                child: AgePickerButton.roommate(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '기상시간',
                isRequired: true,
                child: WakeUpTimePickerButton.roommate(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '취침시간',
                isRequired: true,
                child: SleepTimePickerButton.roommate(),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildFormRow(
                label: '코골이',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '상관없음',
                      isSelected: state.formData.rmSnoring,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(rmSnoring: true);
                        final submit =
                            bloc.state.submit.copyWith(rmSnoring: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '싫어요',
                      isSelected: !state.formData.rmSnoring,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(rmSnoring: false);
                        final submit =
                            bloc.state.submit.copyWith(rmSnoring: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '이갈이',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '상관없음',
                      isSelected: state.formData.rmGrindingTeeth,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(rmGrindingTeeth: true);
                        final submit =
                            bloc.state.submit.copyWith(rmGrindingTeeth: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '싫어요',
                      isSelected: !state.formData.rmGrindingTeeth,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData = bloc.state.formData
                            .copyWith(rmGrindingTeeth: false);
                        final submit =
                            bloc.state.submit.copyWith(rmGrindingTeeth: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '흡연',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '상관없음',
                      isSelected: state.formData.rmSmoking,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(rmSmoking: true);
                        final submit =
                            bloc.state.submit.copyWith(rmSmoking: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '싫어요',
                      isSelected: !state.formData.rmSmoking,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(rmSmoking: false);
                        final submit =
                            bloc.state.submit.copyWith(rmSmoking: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
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
