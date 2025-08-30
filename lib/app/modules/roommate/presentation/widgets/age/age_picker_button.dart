// age_picker_button.dart

import 'package:boggle_flutter/app/modules/roommate/domain/entities/rm_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/age/age_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 1. 함수 타입 정의 (RMEntity 사용)
typedef AgeValueSelector = int Function(RMEntity formData);
typedef AgeValueUpdater = void Function(
    BuildContext context, int selectedValue);

class AgePickerButton extends StatelessWidget {
  final AgeValueSelector _selector;
  final AgeValueUpdater _updater;

  // 2. private 생성자
  const AgePickerButton._({
    required AgeValueSelector selector,
    required AgeValueUpdater updater,
  })  : _selector = selector,
        _updater = updater;

  // 3. '나의 나이'를 위한 factory 생성자
  factory AgePickerButton.myself({Key? key}) {
    return AgePickerButton._(
      selector: (formData) => formData.age,
      updater: (context, selectedValue) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData = bloc.state.formData.copyWith(age: selectedValue);
        final submit = bloc.state.submit.copyWith(age: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
      },
    );
  }

  // 4. '희망 룸메이트 나이'를 위한 factory 생성자
  factory AgePickerButton.roommate({Key? key}) {
    return AgePickerButton._(
      selector: (formData) => formData.rmAge,
      updater: (context, selectedValue) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData = bloc.state.formData.copyWith(rmAge: selectedValue);
        final submit = bloc.state.submit.copyWith(rmAge: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
      },
    );
  }

  // 선택 가능한 나이 리스트
  static final List<int> _ages =
      List.generate(13, (index) => 18 + index); // 18 ~ 30

  Future<void> _showAgePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();
    final initialValue = _selector(bloc.state.formData);

    final selectedValue = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return AgePickerDialog(items: _ages, initialItem: initialValue);
      },
    );

    if (selectedValue != null) {
      _updater(context, selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    // RMEntity의 age 값을 가져오기 위해 _selector 사용
    final selectedAge =
        context.watch<MakeRMPageBloc>().state.formData.let(_selector);

    return InkWell(
      onTap: () => _showAgePicker(context),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedAge == 0 ? '나이를 선택하세요' : '$selectedAge세',
              style: TextStyle(
                fontSize: 16,
                color: selectedAge == 0 ? Colors.grey.shade600 : Colors.black,
              ),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

// 9. state.formData.let(_selector)를 사용하기 위한 확장 함수 (어디든 추가 가능)
extension DataSelector<T> on T {
  R let<R>(R Function(T) block) {
    return block(this);
  }
}
