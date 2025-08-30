// grade_picker_button.dart

import 'package:boggle_flutter/app/modules/roommate/domain/entities/rm_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/grade/grade_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 1. 위젯이 수행할 로직을 함수 타입으로 미리 정의
typedef GradeValueSelector = String Function(RMEntity formData);
typedef GradeValueUpdater = void Function(
    BuildContext context, String selectedValue);

class GradePickerButton extends StatelessWidget {
  // 2. 위젯의 동작을 결정하는 함수들을 멤버 변수로 가짐
  final GradeValueSelector _selector;
  final GradeValueUpdater _updater;

  // 3. 생성자를 private으로 만들어 외부에서 직접 호출하는 것을 막음
  const GradePickerButton._({
    required GradeValueSelector selector,
    required GradeValueUpdater updater,
  })  : _selector = selector,
        _updater = updater;

  // 4. '나의 학년'을 위한 factory 생성자
  factory GradePickerButton.myself({Key? key}) {
    return GradePickerButton._(
      // '나의 학년' 데이터를 선택하는 로직
      selector: (formData) => formData.grade,
      // '나의 학년' 데이터를 업데이트하는 로직
      updater: (context, selectedValue) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData = bloc.state.formData.copyWith(grade: selectedValue);
        final submit = bloc.state.submit.copyWith(grade: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
      },
    );
  }

  // 5. '희망 룸메이트 학년'을 위한 factory 생성자
  factory GradePickerButton.roommate({Key? key}) {
    return GradePickerButton._(
      // '희망 룸메이트 학년' 데이터를 선택하는 로직
      selector: (formData) => formData.rmGrade,
      // '희망 룸메이트 학년' 데이터를 업데이트하는 로직
      updater: (context, selectedValue) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData =
            bloc.state.formData.copyWith(rmGrade: selectedValue);
        final submit = bloc.state.submit.copyWith(rmGrade: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, submit));
      },
    );
  }

  // 선택 가능한 학기 리스트 (공통)
  static const List<String> _grades = [
    '1학년 1학기',
    '1학년 2학기',
    '2학년 1학기',
    '2학년 2학기',
    '3학년 1학기',
    '3학년 2학기',
    '4학년 1학기',
    '4학년 2학기',
    '대학원',
    '기타'
  ];

  Future<void> _showGradePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();
    // 6. 생성자에서 주입받은 _selector 함수로 초기값 가져오기
    final initialValue = _selector(bloc.state.formData);

    final selectedValue = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return GradePickerDialog(items: _grades, initialItem: initialValue);
      },
    );

    if (selectedValue != null) {
      // 7. 생성자에서 주입받은 _updater 함수로 BLoC 업데이트
      _updater(context, selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    // 8. _selector 함수로 화면에 표시할 값 가져오기
    final selectedGrade =
        context.watch<MakeRMPageBloc>().state.formData.let(_selector);

    return InkWell(
      onTap: () => _showGradePicker(context),
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
              selectedGrade.isEmpty ? '학년을 선택하세요' : selectedGrade,
              style: TextStyle(
                fontSize: 16,
                color:
                    selectedGrade.isEmpty ? Colors.grey.shade600 : Colors.black,
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
