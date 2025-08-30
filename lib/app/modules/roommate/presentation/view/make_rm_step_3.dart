// make_rm_step_3.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/common/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeRMStep3 extends StatelessWidget {
  const MakeRMStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeRMPageBloc, MakeRMPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, right: 24),
          // 1. 모든 _buildFormRow는 이 Column의 직접적인 자식이어야 한다.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormRow(
                label: '냉장고',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '있어요',
                      isSelected: state.formData.refrigerator,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(refrigerator: true);
                        final submit =
                            bloc.state.submit.copyWith(refrigerator: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '없어요',
                      isSelected: !state.formData.refrigerator,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(refrigerator: false);
                        final submit =
                            bloc.state.submit.copyWith(refrigerator: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: 'WIFI',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '있어요',
                      isSelected: state.formData.wifi,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(wifi: true);
                        final submit = bloc.state.submit.copyWith(wifi: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '없어요',
                      isSelected: !state.formData.wifi,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(wifi: false);
                        final submit = bloc.state.submit.copyWith(wifi: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    // 2. 여기에 있던 잘못된 코드를 모두 삭제
                  ],
                ),
              ),
              // 3. WIFI Row 밖으로 나와서, Column의 자식으로 나란히 배치
              const SizedBox(height: 30),
              _buildFormRow(
                label: '코골이',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '있어요',
                      isSelected: state.formData.snoring,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(snoring: true);
                        final submit =
                            bloc.state.submit.copyWith(snoring: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '없어요',
                      isSelected: !state.formData.snoring,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(snoring: false);
                        final submit =
                            bloc.state.submit.copyWith(snoring: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '이갈이',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '있어요',
                      isSelected: state.formData.grindingTeeth,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(grindingTeeth: true);
                        final submit =
                            bloc.state.submit.copyWith(grindingTeeth: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '없어요',
                      isSelected: !state.formData.grindingTeeth,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(grindingTeeth: false);
                        final submit =
                            bloc.state.submit.copyWith(grindingTeeth: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildFormRow(
                label: '흡연',
                isRequired: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SelectButton(
                      title: '해요', // '있어요' 보다 '해요'가 자연스러움
                      isSelected: state.formData.smoking,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(smoking: true);
                        final submit =
                            bloc.state.submit.copyWith(smoking: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                    const SizedBox(width: 8),
                    SelectButton(
                      title: '안해요',
                      isSelected: !state.formData.smoking,
                      onPressed: () {
                        final bloc = context.read<MakeRMPageBloc>();
                        final newFormData =
                            bloc.state.formData.copyWith(smoking: false);
                        final submit =
                            bloc.state.submit.copyWith(smoking: true);
                        bloc.add(MakeRMPageEvent.formDataChanged(
                            newFormData, submit));
                      },
                    ),
                  ],
                ),
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80,
          child: Row(
            children: [
              Text(label,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
              if (isRequired)
                const Text('*',
                    style: TextStyle(color: Colors.red, fontSize: 18)),
            ],
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}
