import 'package:flutter/material.dart';

class HomeScreenElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Color textcolor;
  //final Color backgroundColor;
  const HomeScreenElevatedButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.textcolor,
    // required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        // width: ,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //  foregroundColor: Color(backgroundColor.value),
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(color: Colors.white24),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
