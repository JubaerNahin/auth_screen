import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class PopupCard {
  static void show(
    BuildContext context, {
    required String title,
    required String message,
    String? imagePath,
    Color? color,
    bool? extraElevated, required String btn3Text, required String btn2Text, required String btn1Text,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (imagePath != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        imagePath,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 20),

                  Elevatedbutton(
                    text: 'Go to Login',
                    onPressed: () => Navigator.pushNamed(context, "/"),
                  ),
                  const SizedBox(height: 20),
                  if (extraElevated == true)
                    Elevatedbutton(
                      text: 'Go to Ai Setup',
                      onPressed: () =>
                          Navigator.pushNamed(context, "/ai_coach"),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
