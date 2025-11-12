import 'package:flutter/material.dart';

class HomeScreenTextField extends StatelessWidget {
  final String hintText;

  const HomeScreenTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white60, fontSize: 14),
        fillColor: Colors.white12,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
