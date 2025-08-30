// make_rm_step_8.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep8 extends StatelessWidget {
  const MakeRMStep8({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. BlocBuilder로 감싸서 BLoC의 상태 변화에 따라 UI를 다시 그리도록 함
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        final snoringText = state.formData.rmSnoring ? '상관없음' : '싫어요';
        final grindingTeethText =
            state.formData.rmGrindingTeeth ? '상관없음' : '싫어요';
        final smokingText = state.formData.rmSmoking ? '상관없음' : '싫어요';
        //final refrigeratorText = state.formData.refrigerator ? '있어요' : '없어요';
        //final wifiText = state.formData.wifi ? '있어요' : '없어요';
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '희망 룸메 프로필',
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
              _buildFormRow(
                child: Text('${state.formData.rmGrade}'),
                isRequired: true,
                label: '학년',
              ),
              _buildFormRow(
                child: Text('${state.formData.rmAge}세'),
                isRequired: true,
                label: '나이',
              ),
              _buildFormRow(
                child: Text('${state.formData.rmSleepTime}'),
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
                label: '흡연',
                isRequired: true,
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
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
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
      ),
    );
  }
}
