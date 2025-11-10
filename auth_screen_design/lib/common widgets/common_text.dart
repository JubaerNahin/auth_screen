import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const CommonText({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.color = const Color.fromARGB(255, 5, 30, 51),
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
