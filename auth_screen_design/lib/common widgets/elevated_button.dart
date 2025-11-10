import 'package:flutter/material.dart';

class Elevatedbutton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Elevatedbutton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 5, 30, 51),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 241, 232, 147),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
