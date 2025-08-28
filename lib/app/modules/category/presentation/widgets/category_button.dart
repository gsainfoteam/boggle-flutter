import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String _title;
  final Widget _icon;
  final VoidCallback _onPressed;

  const CategoryButton({
    required title,
    required icon,
    required onPressed,
  })  : _title = title,
        _icon = icon,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color.fromARGB(255, 75, 126, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _icon,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                _title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
