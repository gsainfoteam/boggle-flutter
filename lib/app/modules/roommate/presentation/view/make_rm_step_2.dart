//make_rm_step_2.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/room/room_living_now.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/custom_text_field.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/semester/semester_picker_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/sleepTime/sleep_time_button.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/wakeUpTime/wake_up_time_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep2 extends StatelessWidget {
  const MakeRMStep2({super.key});

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
                label: '희망 호실',
                isRequired: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      child: CustomTextField.title(
                        // 1. BLoC 상태에서 초기값을 가져와 전달
                        initialValue:
                            context.watch<MakeRMPageBloc>().state.formData.room,
                        hintText: 'ex.G101',
                        // 2. onChanged 콜백에 BLoC 상태를 업데이트하는 로직을 직접 정의하여 전달
                        onChanged: (value) {
                          final bloc = context.read<MakeRMPageBloc>();
                          // 'room' 필드를 업데이트
                          final newFormData =
                              bloc.state.formData.copyWith(room: value);
                          // 'room' 필드가 입력되었음을 submit 모델에 표시
                          final submit = bloc.state.submit
                              .copyWith(room: value.isNotEmpty);
                          bloc.add(MakeRMPageEvent.formDataChanged(
                              newFormData, submit));
                        },
                      ),
                    ),
                    // 현재 거주중에 대한 정보가 없기에 일단 isSelected는 활성화 되었는지를 확인하기 위해 gender 사용.
                    // onPressed는 추후 만들 예정
                    const SizedBox(width: 5),
                    RoomLivingNowButton(
                      title: '현재 거주중',
                      isSelected: state.formData.gender == '여자',
                      onPressed: () {
                        /*
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(gender: '여자');
                        final submit = bloc.state.submit.copyWith(gender: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));*/
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '신청학기',
                isRequired: true,
                child: SemesterPickerButton(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '기상시간',
                isRequired: true,
                child: WakeUpTimePickerButton.myself(),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '취침시간',
                isRequired: true,
                child: SleepTimePickerButton.myself(),
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
          width: 120,
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

  // BE에 '현재 거주중' 추가되면 만들 예정
  /*Widget _buildLivingButton(
      BuildContext context, String title, String currentLiving) {
    final bool isSelected = title == currentLiving;
    return ElevatedButton(
      onPressed: () {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData = bloc.state.formData.copyWith(gender: title);
        final submit = bloc.state.submit.copyWith(gender: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
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
  }*/
}
