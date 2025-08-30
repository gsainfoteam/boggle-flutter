// make_rm_step_10.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep10 extends StatelessWidget {
  const MakeRMStep10({super.key});

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
              Text('모집글 등록이 완료되었습니다!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '모집글을 확인하시겠습니까?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
