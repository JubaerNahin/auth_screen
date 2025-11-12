import 'package:flutter/material.dart';

class AiCoachSuggestionPopup {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 635,
            decoration: BoxDecoration(
              color: Color(0xFF143048),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Row(children: [
                      
                    ],
                  )],
              ),
            ),
          ),
        );
      },
    );
  }
}
