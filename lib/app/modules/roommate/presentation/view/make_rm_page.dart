// make_rm_page.dart

import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_1.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_10.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_2.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_3.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_4.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_5.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_6.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_7.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_8.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_step_9.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/progress_bar.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/progress_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
// 1. StatelessWidget으로 전환
class MakeRMPage extends StatelessWidget {
  MakeRMPage({super.key});

  // UI에서 폼 데이터와 키를 관리 (BLoC은 비즈니스 로직에만 집중)
  final _formKeys = List.generate(10, (_) => GlobalKey<FormState>());
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
            if (pageIndex < 10 && pageIndex != _pageController.page?.round()) {
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
                  if (state.currentStep <= 4)
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: ProgressBar(
                        totalSteps: 4, // stepIndex 기준, 3까지만 필요
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
                        _buildStep(
                            context: context,
                            stepIndex: 4,
                            child: MakeRMStep5()),
                        _buildStep(
                            context: context,
                            stepIndex: 5,
                            child: MakeRMStep6()),
                        _buildStep(
                            context: context,
                            stepIndex: 6,
                            child: MakeRMStep7()),
                        _buildStep(
                            context: context,
                            stepIndex: 7,
                            child: MakeRMStep8()),
                        _buildStep(
                            context: context,
                            stepIndex: 8,
                            child: MakeRMStep9()),
                        _buildStep(
                            context: context,
                            stepIndex: 9,
                            child: MakeRMStep10()),
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
          final String buttonText;
          if (state.currentStep == 4 || state.currentStep == 7) {
            buttonText = '프로필 확인';
          } else if (state.currentStep == 5) {
            buttonText = '작성 완료 ';
          } else if (state.currentStep == 6) {
            buttonText = '예';
          } else if (state.currentStep == 7) {
            buttonText = '모집글 미리보기';
          } else if (state.currentStep == 8) {
            buttonText = '게시하기';
          } else if (state.currentStep == 9) {
            buttonText = '모집글 확인하기';
          } else {
            buttonText = '다음';
          }
          final isLastStep = state.currentStep == state.totalSteps;

          return ProgressButtons(
            nextButtonText: buttonText,
            isNextEnabled: _isNextButtonEnabled(state),
            showPreviousButton: state.currentStep > 1,
            onPreviousPressed: () => context
                .read<MakeRMPageBloc>()
                .add(const MakeRMPageEvent.previous()),
            onNextPressed: () {
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
            },
          );
        }),
      ),
    );
  }

  Widget _buildStep({
    required BuildContext context,
    required int stepIndex,
    required Widget child,
    bool isRequired = false, // 기본값은 false (필수 아님)
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: _formKeys[stepIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 2. isRequired가 true일 때만 '필수*' Row를 보여줌
            if (isRequired)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('*',
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  const Text('필수',
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                ],
              ),
            const SizedBox(height: 20),
            Expanded(child: child),
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
      case 5:
        return true;
      case 6:
        return true;
      case 7:
        return state.submit.rmGrade &&
            state.submit.rmAge &&
            state.submit.rmWakeUpTime &&
            state.submit.rmSleepTime;
      case 8:
        return true;
      case 9:
        return true;
      case 10:
        return true;
      default:
        // 그 외의 경우는 비활성화
        return false;
    }
  }
}
