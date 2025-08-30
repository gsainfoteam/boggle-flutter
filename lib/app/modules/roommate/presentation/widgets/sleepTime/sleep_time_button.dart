// sleep_time_picker_button.dart

import 'package:boggle_flutter/app/modules/roommate/domain/entities/rm_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/sleepTime/sleep_time_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// 1. 함수 타입 정의
typedef TimeValueSelector = DateTime? Function(RMEntity formData);
typedef TimeValueUpdater = void Function(
    BuildContext context, DateTime selectedValue);

class SleepTimePickerButton extends StatelessWidget {
  final String _placeholder;
  final TimeValueSelector _selector;
  final TimeValueUpdater _updater;

  // 2. private 생성자
  const SleepTimePickerButton._({
    required String placeholder,
    required TimeValueSelector selector,
    required TimeValueUpdater updater,
  })  : _placeholder = placeholder,
        _selector = selector,
        _updater = updater;

  // 3. '나의 취침 시간'을 위한 factory 생성자
  factory SleepTimePickerButton.myself({Key? key}) {
    return SleepTimePickerButton._(
      placeholder: '취침시간을 선택하세요',
      selector: (formData) => formData.sleepTime,
      updater: (context, selectedTime) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData =
            bloc.state.formData.copyWith(sleepTime: selectedTime);
        final newSubmit = bloc.state.submit.copyWith(sleepTime: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, newSubmit));
      },
    );
  }

  // 4. '희망 룸메이트 취침 시간'을 위한 factory 생성자
  factory SleepTimePickerButton.roommate({Key? key}) {
    return SleepTimePickerButton._(
      placeholder: '희망 취침시간을 선택하세요',
      selector: (formData) => formData.rmSleepTime,
      updater: (context, selectedTime) {
        final bloc = context.read<MakeRMPageBloc>();
        final newFormData =
            bloc.state.formData.copyWith(rmSleepTime: selectedTime);
        final newSubmit = bloc.state.submit.copyWith(rmSleepTime: true);
        bloc.add(MakeRMPageEvent.formDataChanged(newFormData, newSubmit));
      },
    );
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();
    final initialTime = _selector(bloc.state.formData);

    final selectedTime = await showDialog<DateTime>(
      context: context,
      builder: (context) => SleepTimeDialog(initialTime: initialTime),
    );

    if (selectedTime != null) {
      _updater(context, selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
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

// let 확장 함수
extension DataSelector<T> on T {
  R let<R>(R Function(T) block) {
    return block(this);
  }
}
