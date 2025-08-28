import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  /// 전체 단계 수
  final int totalSteps;

  /// 현재 진행 중인 단계
  final int currentStep;

  /// 활성화된 상태의 색상
  final Color activeColor;

  /// 비활성화된 상태의 색상
  final Color inactiveColor;

  /// 점(Dot)의 크기
  final double dotSize;

  /// 선(Line)의 두께
  final double lineHeight;

  const ProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
    this.activeColor = Colors.indigo,
    this.inactiveColor = Colors.grey,
    this.dotSize = 16.0,
    this.lineHeight = 2.0,
  })  : assert(totalSteps > 0),
        assert(currentStep >= 0 && currentStep <= totalSteps + 1);

  @override
  Widget build(BuildContext context) {
    // 위젯 리스트를 동적으로 생성
    List<Widget> children = [];
    for (int i = 1; i <= totalSteps; i++) {
      // 각 단계를 나타내는 점(Dot) 위젯 추가
      children.add(_buildDot(i));

      // 마지막 점이 아닐 경우, 점과 점 사이의 선(Line) 위젯 추가
      if (i < totalSteps) {
        children.add(_buildLine(i));
      }
    }

    return Semantics(
      label: "진행 단계",
      value: "총 $totalSteps단계 중 $currentStep단계 진행 중",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }

  /// 점(Dot) 위젯을 생성하는 메서드
  Widget _buildDot(int stepIndex) {
    final bool isActive = currentStep >= stepIndex;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: dotSize,
      height: dotSize,
      transformAlignment: Alignment.center,
      // 활성화된 점은 약간 크게 표시하여 강조
      transform: Matrix4.identity()..scale(isActive ? 1.1 : 1.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? activeColor : inactiveColor,
      ),
    );
  }

  /// 선(Line) 위젯을 생성하는 메서드
  Widget _buildLine(int stepIndex) {
    // currentStep이 현재 점의 인덱스보다 커야 다음 선이 활성화됨
    final bool isActive = currentStep > stepIndex;

    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        height: lineHeight,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: isActive ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(lineHeight / 2),
        ),
      ),
    );
  }
}
