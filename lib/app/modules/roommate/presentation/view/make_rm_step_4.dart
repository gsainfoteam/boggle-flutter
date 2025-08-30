// make_rm_step_4.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep4 extends StatelessWidget {
  const MakeRMStep4({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, right: 24, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    '제목',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const Text('*',
                      style: TextStyle(color: Colors.red, fontSize: 18)),
                ],
              ),
              const SizedBox(height: 5),
              // --- 제목 입력 필드 ---
              const SizedBox(height: 8),
              CustomTextField.title(
                initialValue: state.formData.title,
                hintText: '직접 입력',
                onChanged: (value) {
                  final bloc = context.read<MakeRMPageBloc>();
                  final newFormData =
                      bloc.state.formData.copyWith(title: value);
                  // 제목이 입력되었음을 submit 모델에 표시
                  final submit =
                      bloc.state.submit.copyWith(title: value.isNotEmpty);
                  bloc.add(
                      MakeRMPageEvent.formDataChanged(newFormData, submit));
                },
              ),
              const SizedBox(height: 15),

              // --- 내용 입력 필드 ---
              const Text('추가 정보 작성하기',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              CustomTextField.content(
                initialValue: state.formData.content,
                hintText: 'ex) 저는 벌레를 잘 잡습니다.',
                onChanged: (value) {
                  final bloc = context.read<MakeRMPageBloc>();
                  final newFormData =
                      bloc.state.formData.copyWith(content: value);
                  // 제목이 입력되었음을 submit 모델에 표시
                  final submit =
                      bloc.state.submit.copyWith(content: value.isNotEmpty);
                  bloc.add(
                      MakeRMPageEvent.formDataChanged(newFormData, submit));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
