import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? hight;
  const BasicAppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(hight ?? 50),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
      onPressed: onPressed,
    );
  }
}
