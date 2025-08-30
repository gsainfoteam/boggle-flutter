// make_rm_step_9.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MakeRMStep9 extends StatelessWidget {
  const MakeRMStep9({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        // 데이터 표시를 위한 변환 로직
        final timeFormat = DateFormat('a hh:mm', 'ko_KR');

        return SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text('모집글 미리보기',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(height: 20),

                // --- 나의 프로필 섹션 ---
                const _SectionTitle(title: '나의 프로필'),
                _buildInfoRow(label: '성별', value: state.formData.gender),
                _buildInfoRow(label: '나이', value: '${state.formData.age}세'),
                _buildInfoRow(label: '학년', value: state.formData.grade),
                _buildInfoRow(
                    label: 'MBTI', value: state.formData.mbti ?? '미입력'),
                _buildInfoRow(label: '신청학기', value: state.formData.semester),
                _buildInfoRow(
                    label: '희망 호실',
                    value: state.formData.room?.isEmpty ?? true
                        ? '미입력'
                        : state.formData.room!),
                _buildInfoRow(
                    label: '흡연', value: state.formData.smoking ? '해요' : '안 해요'),
                _buildInfoRow(
                    label: '코골이',
                    value: state.formData.snoring ? '있어요' : '없어요'),
                _buildInfoRow(
                    label: '이갈이',
                    value: state.formData.grindingTeeth ? '있어요' : '없어요'),
                _buildInfoRow(
                    label: '기상시간',
                    value: state.formData.wakeUpTime == null
                        ? '미선택'
                        : timeFormat.format(state.formData.wakeUpTime!)),
                _buildInfoRow(
                    label: '취침시간',
                    value: state.formData.sleepTime == null
                        ? '미선택'
                        : timeFormat.format(state.formData.sleepTime!)),
                const SizedBox(height: 10),

                // --- 희망 룸메이트 프로필 섹션 ---
                const Divider(thickness: 1, height: 16, color: Colors.black),
                const _SectionTitle(title: '희망 룸메이트 프로필'),
                _buildInfoRow(
                    label: '흡연',
                    value: state.formData.rmSmoking ? '상관없음' : '싫어요'),
                _buildInfoRow(
                    label: '코골이',
                    value: state.formData.rmSnoring ? '상관없음' : '싫어요'),
                _buildInfoRow(
                    label: '이갈이',
                    value: state.formData.rmGrindingTeeth ? '상관없음' : '싫어요'),
                const SizedBox(height: 20),

                // --- 추가 정보 섹션 ---
                const _SectionTitle(title: '추가 정보'),
                Text(
                  state.formData.content?.isEmpty ?? true
                      ? '작성된 추가 정보가 없습니다.'
                      : state.formData.content!,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 가독성을 위해 '라벨: 값' 형태의 Row를 만드는 헬퍼 위젯으로 변경
  Widget _buildInfoRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120, // 라벨의 너비를 고정하여 정렬
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
          // Expanded를 사용하여 값이 길어질 경우 자동으로 줄바꿈되도록 함
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

// 섹션 제목을 위한 재사용 위젯
class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
        const Divider(thickness: 1, height: 16),
      ],
    );
  }
}
