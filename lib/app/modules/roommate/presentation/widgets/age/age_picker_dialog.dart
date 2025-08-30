import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgePickerDialog extends StatefulWidget {
  final List<int> items;
  final int initialItem; // 이전에 선택했던 항목을 기억하기 위한 초기값

  const AgePickerDialog({required this.items, required this.initialItem});

  @override
  State<AgePickerDialog> createState() => AgePickerDialogState();
}

class AgePickerDialogState extends State<AgePickerDialog> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.items.indexOf(widget.initialItem);
    if (_selectedIndex == -1) {
      _selectedIndex = 0; // 초기값이 리스트에 없으면 0으로 설정
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      content: SizedBox(
        height: 250,
        width: 300,
        child: CupertinoPicker(
          scrollController:
              FixedExtentScrollController(initialItem: _selectedIndex),
          itemExtent: 40,
          onSelectedItemChanged: (index) {
            _selectedIndex = index;
          },
          children: widget.items
              .map((item) => Center(child: Text(item.toString())))
              .toList(),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 16),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop(widget.items[_selectedIndex]);
          },
          child: const Text('확인'),
        ),
      ],
    );
  }
}
