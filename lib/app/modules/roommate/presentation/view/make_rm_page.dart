// make_rm_page.dart

import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_1.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_2.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_3.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_4.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
// 1. StatelessWidget으로 전환
class MakeRMPage extends StatelessWidget {
  MakeRMPage({super.key});

  // UI에서 폼 데이터와 키를 관리 (BLoC은 비즈니스 로직에만 집중)
  final _formKeys = List.generate(4, (_) => GlobalKey<FormState>());
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // 2. BlocProvider로 BLoC 인스턴스 주입
    return BlocProvider(
      create: (context) => sl<MakeRMPageBloc>(),
      child: Scaffold(
        appBar: BoggleAppBar.compact(
          onArrowLeftTap: () => context.router.maybePop(),
        ),
        // 3. BlocListener로 페이지 이동, 스낵바 같은 Side Effect 처리
        body: BlocListener<MakeRMPageBloc, MakeRMPageState>(
          listener: (context, state) {
            // 페이지 컨트롤러를 BLoC의 currentStep과 동기화
            final pageIndex = state.currentStep - 1;
            if (pageIndex < 4 && pageIndex != _pageController.page?.round()) {
              _pageController.animateToPage(
                pageIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }

            // 제출 성공/실패 시 스낵바 표시
            if (state.submissionStatus == SubmitStatus.success) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('게시글 등록 성공!')),
              );
            } else if (state.submissionStatus == SubmitStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('오류 발생: ${state.errorMessage}')),
              );
            }
          },
          // 4. BlocBuilder로 UI 렌더링
          child: BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
            builder: (context, state) {
              // 제출 중일 때 로딩 오버레이
              if (state.submissionStatus == SubmitStatus.inProgress) {
                return const Center(child: CircularProgressIndicator());
              }
              // 완료 화면
              if (state.submissionStatus == SubmitStatus.success) {
                return const Center(
                    child: Text('🎉 완료되었습니다!', style: TextStyle(fontSize: 24)));
              }

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ProgressBar(
                      totalSteps: state.totalSteps,
                      currentStep: state.currentStep,
                      activeColor: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildStep(
                            context: context,
                            stepIndex: 0,
                            child: MakeRMStep1()),
                        _buildStep(
                            context: context,
                            stepIndex: 1,
                            child: MakeRMStep2()),
                        _buildStep(
                            context: context,
                            stepIndex: 2,
                            child: MakeRMStep3()),
                        _buildStep(
                            context: context,
                            stepIndex: 3,
                            child: MakeRMStep4()),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
            builder: (context, state) {
          // 완료 화면에서는 버튼 숨김
          if (state.currentStep > state.totalSteps)
            return const SizedBox.shrink();

          final bool isEnabled = _isNextButtonEnabled(state);

          final isLastStep = state.currentStep == state.totalSteps;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // '이전' 버튼
                if (state.currentStep > 1)
                  Expanded(
                    child: TextButton(
                      style:
                          TextButton.styleFrom(minimumSize: const Size(0, 50)),
                      onPressed: () => context
                          .read<MakeRMPageBloc>()
                          .add(const MakeRMPageEvent.previous()),
                      child: const Text('이전'),
                    ),
                  ),
                if (state.currentStep > 1) const SizedBox(width: 16),
                // '다음' 또는 '작성 완료' 버튼
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(0, 50),
                        backgroundColor: isEnabled
                            ? Colors.blue
                            : Colors.grey, // 활성화/비활성화 시 색상 변경
                        foregroundColor: Colors.white),
                    // 2. isEnabled 값에 따라 onPressed 로직을 할당하거나 null을 할당
                    onPressed: isEnabled
                        ? () {
                            final formKey = _formKeys[state.currentStep - 1];
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              if (isLastStep) {
                                context
                                    .read<MakeRMPageBloc>()
                                    .add(const MakeRMPageEvent.submit());
                              } else {
                                context
                                    .read<MakeRMPageBloc>()
                                    .add(const MakeRMPageEvent.next());
                              }
                            }
                          }
                        : null, // isEnabled가 false이면 버튼 비활성화
                    child: Text(isLastStep ? '작성 완료' : '다음'),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  // 간단한 예시를 위해 공통 Step 위젯 빌더를 만듦
  Widget _buildStep({
    required BuildContext context,
    required int stepIndex,
    required Widget child, // TextFormField 대신 child 위젯을 직접 받음
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: _formKeys[stepIndex],
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
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }

  bool _isNextButtonEnabled(MakeRMPageState state) {
    switch (state.currentStep) {
      case 1:
        // 1단계 필수 조건: gender, grade, age
        return state.submit.gender && state.submit.grade && state.submit.age;
      case 2:
        // 2단계 필수 조건: semester, wakeUpTime, sleepTime
        return state.submit.semester &&
            state.submit.wakeUpTime &&
            state.submit.sleepTime;
      case 3:
        // 3단계 필수 조건: refrigerator, wifi, snoring, grindingTeeth, smoking
        // 그러나, 각각 속성은 이미 false로 초기 상태가 존재.
        // 버튼도 활성화되어 있으므로 그냥 '다음'으로 넘긴다면 사용자 책임.
        return true;
      case 4:
        // 4단계 필수 조건: title
        return state.submit.title;
      default:
        // 그 외의 경우는 비활성화
        return false;
    }
  }
}
