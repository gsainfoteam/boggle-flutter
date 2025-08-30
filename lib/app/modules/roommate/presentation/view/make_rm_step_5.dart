// make_rm_step_5.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep5 extends StatelessWidget {
  const MakeRMStep5({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. BlocBuilder로 감싸서 BLoC의 상태 변화에 따라 UI를 다시 그리도록 함
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        final snoringText = state.formData.snoring ? '있어요' : '없어요';
        final grindingTeethText = state.formData.grindingTeeth ? '있어요' : '없어요';
        final smokingText = state.formData.smoking ? '해요' : '안 해요';
        final refrigeratorText = state.formData.refrigerator ? '있어요' : '없어요';
        final wifiText = state.formData.wifi ? '있어요' : '없어요';
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '나의 프로필',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '기본 정보',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildFormRow(
                          child: Text('${state.formData.gender}'),
                          isRequired: true,
                          label: '성별'),
                    ),
                    Expanded(
                      child: _buildFormRow(
                        child: Text('${state.formData.age}세'),
                        isRequired: true,
                        label: '나이',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildFormRow(
                          child: Text('${state.formData.mbti}'), label: 'MBTI'),
                    ),
                    Expanded(
                      child: _buildFormRow(
                        child: Text('${state.formData.grade}'),
                        isRequired: true,
                        label: '학년',
                      ),
                    ),
                  ],
                ),
                _buildFormRow(
                  child: Text('${state.formData.semester}'),
                  isRequired: true,
                  label: '신청학기',
                ),
                _buildFormRow(
                    child: Text('${state.formData.room}'),
                    isRequired: true,
                    label: '내가 원하는 방'),
                Divider(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text('생활 습관',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
                ),
                _buildFormRow(
                  child: Text('${state.formData.sleepTime}'),
                  label: '취침 시간',
                  isRequired: true,
                ),
                _buildFormRow(
                  child: Text(snoringText),
                  label: '코골이',
                  isRequired: true,
                ),
                _buildFormRow(
                  child: Text(grindingTeethText),
                  label: '이갈이',
                  isRequired: true,
                ),
                _buildFormRow(
                  child: Text(smokingText),
                  label: '담배',
                  isRequired: true,
                ),
                Divider(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text('물품',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
                ),
                _buildFormRow(
                  child: Text(refrigeratorText),
                  label: '냉장고',
                  isRequired: true,
                ),
                _buildFormRow(
                  child: Text(wifiText),
                  label: 'WIFI',
                  isRequired: true,
                ),
                Divider(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text('추가 정보',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
                ),
                Text('${state.formData.content}',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
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
        SizedBox(
          child: Row(
            children: [
              Text(label,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              if (isRequired)
                const Text('*',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
              const SizedBox(
                width: 5,
              ),
              Text('|',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        // 입력 필드 부분: 남은 공간을 모두 차지
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Expanded(child: child),
        ),
      ],
    );
  }
}
