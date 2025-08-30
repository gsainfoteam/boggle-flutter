// wake_up_time_picker_button.dart

import 'package:boggle_flutter/app/modules/roommate/domain/entities/rm_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/wakeUpTime/wake_up_time_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// 1. 함수 타입 정의
typedef TimeValueSelector = DateTime? Function(RMEntity formData);
typedef TimeValueUpdater = void Function(
    BuildContext context, DateTime selectedValue);

class WakeUpTimePickerButton extends StatelessWidget {
  final String _placeholder;
  final TimeValueSelector _selector;
  final TimeValueUpdater _updater;

  // 2. private 생성자
  const WakeUpTimePickerButton._({
    required String placeholder,
    required TimeValueSelector selector,
    required TimeValueUpdater updater,
  })  : _placeholder = placeholder,
        _selector = selector,
        _updater = updater;

  // 3. '나의 기상 시간'을 위한 factory 생성자
  factory WakeUpTimePickerButton.myself({Key? key}) {
    return WakeUpTimePickerButton._(
      placeholder: '기상시간을 선택하세요',
      selector: (formData) => formData.wakeUpTime,
      updater: (context, selectedTime) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData =
            bloc.state.formData.copyWith(wakeUpTime: selectedTime);
        final newSubmit = bloc.state.submit.copyWith(wakeUpTime: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, newSubmit));
      },
    );
  }

  // 4. '희망 룸메이트 기상 시간'을 위한 factory 생성자
  factory WakeUpTimePickerButton.roommate({Key? key}) {
    return WakeUpTimePickerButton._(
      placeholder: '희망 기상시간을 선택하세요',
      selector: (formData) => formData.rmWakeUpTime,
      updater: (context, selectedTime) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData =
            bloc.state.formData.copyWith(rmWakeUpTime: selectedTime);
        final newSubmit = bloc.state.submit.copyWith(rmWakeUpTime: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, newSubmit));
      },
    );
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();
    final initialTime = _selector(bloc.state.formData);

    final selectedTime = await showDialog<DateTime>(
      context: context,
      builder: (context) => WakeUpTimeDialog(initialTime: initialTime),
    );

    if (selectedTime != null) {
      _updater(context, selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    // 5. _selector를 사용하여 BLoC 상태에서 원하는 DateTime 값을 가져옴
    final selectedTime =
        context.watch<MakeRMPageBloc>().state.formData.let(_selector);

    final timeText = selectedTime == null
        ? _placeholder
        : DateFormat('a hh:mm', 'ko_KR').format(selectedTime);

    final textColor =
        selectedTime == null ? Colors.grey.shade600 : Colors.black;

    return InkWell(
      onTap: () => _showTimePicker(context),
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
            Text(timeText, style: TextStyle(fontSize: 16, color: textColor)),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

// let 확장 함수 (공통 파일로 빼서 관리하는 것이 좋음)
extension DataSelector<T> on T {
  R let<R>(R Function(T) block) {
    return block(this);
  }
}
