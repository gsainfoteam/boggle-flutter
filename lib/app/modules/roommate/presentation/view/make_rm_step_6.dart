// make_rm_step_6.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep6 extends StatelessWidget {
  const MakeRMStep6({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. BlocBuilder로 감싸서 BLoC의 상태 변화에 따라 UI를 다시 그리도록 함
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '나의 프로필 입력이 완료되었습니다.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade400),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    // 1. 문장 전체에 적용될 기본 스타일 정의 (일반 폰트, 검은색)
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      // 필요하다면 여기에 fontFamily 등을 추가
                    ),
                    children: [
                      // 2. 굵게 표시할 첫 번째 텍스트 조각
                      const TextSpan(
                        text: '희망 룸메이트 프로필',
                        style: TextStyle(
                            fontWeight: FontWeight.w700), // 기본 스타일에 굵은 글씨만 추가
                      ),
                      // 3. 일반 스타일로 표시할 나머지 텍스트 조각
                      const TextSpan(
                        text: '도 입력하시겠습니까?',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
