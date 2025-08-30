import 'package:flutter/material.dart';

class MBTIPickerList extends StatefulWidget {
  final List<String> items;
  final String initialItem;

  const MBTIPickerList({
    super.key,
    required this.items,
    required this.initialItem,
  });

  @override
  State<MBTIPickerList> createState() => _MBTIPickerListState();
}

class _MBTIPickerListState extends State<MBTIPickerList> {
  // 사용자가 선택한 항목의 인덱스를 저장하는 상태 변수 (그대로 사용)
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // 이전에 선택했던 값으로 초기 인덱스 설정 (그대로 사용)
    _selectedIndex = widget.items.indexOf(widget.initialItem);
    if (_selectedIndex == -1) {
      _selectedIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: const Center(child: Text('MBTI 선택')),
      contentPadding: const EdgeInsets.all(16),
      // 1. content를 CupertinoPicker에서 GridView.builder로 교체
      content: SizedBox(
        width: 300, // 다이얼로그의 너비 고정
        // GridView가 내용에 따라 높이를 차지하도록 Column과 Flexible로 감쌈
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                // 한 줄에 4개의 버튼을 표시
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5, // 버튼의 가로세로 비율
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  final item = widget.items[index];
                  // 현재 인덱스의 버튼이 선택된 상태인지 확인
                  final bool isSelected = index == _selectedIndex;

                  return ElevatedButton(
                    onPressed: () {
                      // 2. 버튼 클릭 시 _selectedIndex를 업데이트하여 UI를 다시 그리도록 함
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor:
                          isSelected ? const Color(0xFFEDF2FF) : Colors.white,
                      foregroundColor:
                          isSelected ? const Color(0xFF4B7EFF) : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(
                        color:
                            isSelected ? const Color(0xFF4B7EFF) : Colors.black,
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      item,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 16, top: 0),
      // 3. '확인' 버튼의 로직은 변경할 필요 없음
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            // 현재 선택된 _selectedIndex에 해당하는 아이템을 반환하며 창을 닫음
            Navigator.of(context).pop(widget.items[_selectedIndex]);
          },
          child: const Text('확인'),
        ),
      ],
    );
  }
}
