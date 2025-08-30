import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';
import 'package:boggle_flutter/app/modules/post/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/post/presentation/bloc/post_detail_bloc.dart';
import 'package:boggle_flutter/app/modules/post/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class PostRMPage extends StatelessWidget {
  final String postId;

  const PostRMPage({
    super.key,
    required this.postId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<PostDetailBloc>()..add(PostDetailEvent.fetch(postId: postId)),
      child: Scaffold(
        appBar: BoggleAppBar.compact(),
        body: BlocBuilder<PostDetailBloc, PostDetailState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (post) {
                return _buildPostContent(context, post);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildPostContent(BuildContext context, PostModel post) {
    // PostModel에 포함된 RMModel을 변수로 추출하여 가독성 향상
    final rmDetails = post.roommateDetails;
    final timeFormat = DateFormat('a hh:mm', 'ko_KR');
    final dateFormat = DateFormat('yyyy.MM.dd');

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                post.title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text('작성자 ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                Text(post.author?.name ?? '알 수 없음',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                const Text('게시일 ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                Text(dateFormat.format(post.createdAt),
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700)),
              ],
            ),
            Row(
              children: [
                const Text('마감일 ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                Text(
                    post.deadline != null
                        ? dateFormat.format(post.deadline!)
                        : '상시 모집',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CustomButton(title: '프로필 보기', onPressed: () {}),
                const SizedBox(width: 10),
                CustomButton(title: '채팅 하기', onPressed: () {}),
              ],
            ),
            const Divider(thickness: 1, height: 24, color: Colors.black),
            const Text(
              '기본 정보',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                    child: _buildInfoRow(
                        label: '성별', value: rmDetails?.gender ?? '-')),
                Expanded(
                    child: _buildInfoRow(
                        label: '나이', value: '${rmDetails?.age ?? '-'}세')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: _buildInfoRow(
                        label: 'MBTI', value: rmDetails?.mbti ?? '미입력')),
                Expanded(
                    child: _buildInfoRow(
                        label: '학년', value: rmDetails?.grade ?? '-')),
              ],
            ),
            _buildInfoRow(label: '모집학기', value: rmDetails?.semester ?? '-'),
            _SectionTitle(title: '생활 습관'),
            _buildInfoRow(
                label: '기상시간',
                value: rmDetails?.wakeUpTime == null
                    ? '미선택'
                    : timeFormat.format(rmDetails!.wakeUpTime!)),
            _buildInfoRow(
                label: '취침시간',
                value: rmDetails?.sleepTime == null
                    ? '미선택'
                    : timeFormat.format(rmDetails!.sleepTime!)),
            _buildInfoRow(
                label: '코골이',
                value: rmDetails?.snoring == true ? '있어요' : '없어요'),
            // RMModel에 grindingTeeth가 없으므로 주석 처리. 필요시 모델에 추가하세요.
            // _buildInfoRow(label: '이갈이', value: rmDetails?.grindingTeeth == true ? '있어요' : '없어요'),
            _buildInfoRow(
                label: '흡연', value: rmDetails?.smoking == true ? '해요' : '안 해요'),
            _SectionTitle(title: '물품'),
            _buildInfoRow(
                label: '냉장고',
                value: rmDetails?.refrigerator == true ? '있어요' : '없어요'),
            _buildInfoRow(
                label: 'WIFI', value: rmDetails?.wifi == true ? '있어요' : '없어요'),
            const SizedBox(height: 10),
            _SectionTitle(title: '기타 정보'),
            Text(
              post.content?.isEmpty ?? true
                  ? '작성된 추가 정보가 없습니다.'
                  : post.content!,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const Divider(thickness: 1, height: 24, color: Colors.black),
            _SectionTitle(title: '희망 룸메이트 프로필'),
            // RMModel에 rmGrade, rmAge가 없으므로 주석 처리. 필요시 모델에 추가하세요.
            // _buildInfoRow(label: '학년', value: rmDetails?.rmGrade ?? '-'),
            // _buildInfoRow(label: '나이', value: '${rmDetails?.rmAge ?? '-'}세'),
            _buildInfoRow(
                label: '기상시간',
                value: rmDetails?.rmWakeUpTime == null
                    ? '상관없음'
                    : timeFormat.format(rmDetails!.rmWakeUpTime!)),
            _buildInfoRow(
                label: '취침시간',
                value: rmDetails?.rmSleepTime == null
                    ? '상관없음'
                    : timeFormat.format(rmDetails!.rmSleepTime!)),
            _buildInfoRow(
                label: '코골이',
                value: rmDetails?.rmSnoring == true ? '상관없음' : '코 안 고는 분'),
            _buildInfoRow(
                label: '흡연',
                value: rmDetails?.rmSmoking == true ? '상관없음' : '비흡연자'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // --- Helper Widgets ---
  Widget _buildInfoRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80, // 너비는 UI에 맞게 조절
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ),
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

  Widget _SectionTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(title,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w700)),
    );
  }
}
