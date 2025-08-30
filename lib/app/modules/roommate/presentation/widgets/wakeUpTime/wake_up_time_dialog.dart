// wake_up_time_dialog.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WakeUpTimeDialog extends StatefulWidget {
  final DateTime? initialTime;

  const WakeUpTimeDialog({super.key, this.initialTime});

  @override
  State<WakeUpTimeDialog> createState() => _WakeUpTimeDialogState();
}

class _WakeUpTimeDialogState extends State<WakeUpTimeDialog> {
  late int _hour; // 1-12
  late int _minute;
  late String _period; // '오전', '오후'

  late final TextEditingController _hourController;
  late final TextEditingController _minuteController;

  final FocusNode _hourFocusNode = FocusNode();
  final FocusNode _minuteFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final time = widget.initialTime ?? DateTime.now();

    _hourFocusNode.addListener(() => setState(() {}));
    _minuteFocusNode.addListener(() => setState(() {}));

    // DateTime을 12시간제, 분, 오전/오후로 분해
    int hour24 = time.hour;
    if (hour24 >= 12) {
      _period = '오후';
      _hour = hour24 == 12 ? 12 : hour24 - 12;
    } else {
      _period = '오전';
      _hour = hour24 == 0 ? 12 : hour24;
    }
    _minute = time.minute;

    _hourController =
        TextEditingController(text: _hour.toString().padLeft(2, '0'));
    _minuteController =
        TextEditingController(text: _minute.toString().padLeft(2, '0'));
  }

  @override
  void dispose() {
    _hourFocusNode.removeListener(() {});
    _minuteFocusNode.removeListener(() {});
    _hourFocusNode.dispose();
    _minuteFocusNode.dispose();
    _hourController.dispose();
    _minuteController.dispose();
    super.dispose();
  }

  void _onConfirm() {
    // 입력된 값들을 최종 DateTime 객체로 조립
    int finalHour24 = _hour;
    if (_period == '오후' && _hour != 12) {
      finalHour24 += 12;
    } else if (_period == '오전' && _hour == 12) {
      finalHour24 = 0;
    }

    final now = DateTime.now();
    final finalTime =
        DateTime(now.year, now.month, now.day, finalHour24, _minute);

    Navigator.of(context).pop(finalTime);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: const Center(child: Text('기상시간')),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTimeInput(
              controller: _hourController,
              focusNode: _hourFocusNode,
              label: '시'),
          const SizedBox(
            width: 15,
          ),
          _buildTimeInput(
              controller: _minuteController,
              focusNode: _minuteFocusNode,
              label: '분'),
          const SizedBox(width: 15),
          _buildPeriodSelector(),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      actions: [
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(minimumSize: const Size(0, 50)),
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('취소'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(0, 50)),
            onPressed: _onConfirm,
            child: const Text('확인'),
          ),
        ),
      ],
    );
  }

  Widget _buildPeriodSelector() {
    return ToggleButtons(
      // 1. isSelected: bool 리스트를 전달하여 선택 상태를 제어
      // _period가 '오전'이면 [true, false], '오후'이면 [false, true]가 됨
      isSelected: [
        _period == '오전',
        _period == '오후',
      ],
      // 2. onPressed: 버튼을 눌렀을 때 호출되며, 눌린 버튼의 index를 전달
      onPressed: (int index) {
        setState(() {
          // index가 0이면 '오전', 1이면 '오후'로 _period 상태 변경
          _period = index == 0 ? '오전' : '오후';
        });
      },
      // 3. direction: 버튼을 수직으로 쌓기 위해 Axis.vertical로 설정
      direction: Axis.vertical,

      // --- 4. 스타일링 ---
      borderRadius: BorderRadius.circular(5),
      selectedColor: const Color(0xFF4B7EFF), // 선택된 버튼의 글자/아이콘 색상
      color: Colors.grey.shade600, // 선택되지 않은 버튼의 글자/아이콘 색상
      fillColor: const Color(0xFFEDF2FF), // 선택된 버튼의 배경색
      borderColor: Colors.grey.shade400,
      selectedBorderColor: const Color(0xFF4B7EFF),

      // 5. children: 각 버튼 안에 들어갈 위젯 리스트
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('오전', style: TextStyle(fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('오후', style: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }

  Widget _buildTimeInput({
    required TextEditingController controller,
    required FocusNode focusNode, // FocusNode를 파라미터로 받음
    required String label,
  }) {
    // 현재 포커스 여부 확인
    final bool isActive = focusNode.hasFocus;

    // 활성화/비활성화 상태에 따른 색상 정의
    final activeColor = Colors.blue;
    final inactiveColor = Colors.grey.shade400;
    final backgroundColor = isActive ? Colors.white : Colors.grey.shade200;
    final borderColor = isActive ? activeColor : inactiveColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Center(
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              // 숫자만, 그리고 최대 2자리까지만 입력되도록 제한
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(2),
              ],
              decoration: const InputDecoration(
                border: InputBorder.none, // 기본 밑줄 제거
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: (value) {
                // 값이 바뀔 때마다 _hour, _minute 상태 변수 업데이트
                final intValue = int.tryParse(value) ?? 0;
                if (label == '시') {
                  // TODO: 1~12 사이 값 유효성 검사 추가 가능
                  _hour = intValue;
                } else {
                  // TODO: 0~59 사이 값 유효성 검사 추가 가능
                  _minute = intValue;
                }
              },
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
