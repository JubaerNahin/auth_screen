import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool isEnable;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isEnable,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnable
              ? const Color.fromARGB(255, 5, 30, 51)
              : Colors.white70,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: isEnable
                ? const Color.fromARGB(255, 241, 232, 147)
                : Colors.black26,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
