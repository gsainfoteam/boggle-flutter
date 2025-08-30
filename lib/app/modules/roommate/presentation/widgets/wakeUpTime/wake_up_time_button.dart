// wake_up_time_picker_button.dart

import 'package:boggle_flutter/app/modules/roommate/presentation/bloc/make_rm_page_bloc.dart';
import 'package:boggle_flutter/app/modules/roommate/presentation/widgets/wakeUpTime/wake_up_time_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class WakeUpTimePickerButton extends StatelessWidget {
  const WakeUpTimePickerButton({super.key});

  Future<void> _showTimePicker(BuildContext context) async {
    final bloc = context.read<MakeRMPageBloc>();
    final initialTime = bloc.state.formData.wakeUpTime;

    final selectedTime = await showDialog<DateTime>(
      context: context,
      builder: (context) => WakeUpTimeDialog(initialTime: initialTime),
    );

    if (selectedTime != null) {
      final newFormData =
          bloc.state.formData.copyWith(wakeUpTime: selectedTime);
      final newSubmit = bloc.state.submit.copyWith(wakeUpTime: true);
      bloc.add(MakeRMPageEvent.formDataChanged(newFormData, newSubmit));
    }
  }

  @override
  Widget build(BuildContext context) {
    // BLoC 상태를 watch하여 시간이 변경될 때마다 UI를 갱신
    final selectedTime =
        context.watch<MakeRMPageBloc>().state.formData.wakeUpTime;

    // DateTime을 '오전 hh:mm' 형식의 문자열로 포맷
    final timeText = selectedTime == null
        ? '기상시간을 선택하세요'
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
