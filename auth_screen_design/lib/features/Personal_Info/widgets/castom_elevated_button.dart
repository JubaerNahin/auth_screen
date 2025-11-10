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
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnable
              ? Colors.white60
              : const Color.fromARGB(255, 5, 30, 51),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: isEnable
                ? Colors.black26
                : const Color.fromARGB(255, 241, 232, 147),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
