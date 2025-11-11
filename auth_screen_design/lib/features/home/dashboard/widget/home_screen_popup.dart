import 'package:flutter/material.dart';

class HomeScreenPopup {
  static void show(BuildContext context) {
    final double bottomPadding = 150; // distance above navbar

    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Popup",
      barrierColor: Colors.transparent,
      pageBuilder: (context, anim1, anim2) {
        return Stack(
          children: [
            // Semi-transparent background
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(color: Colors.black54),
            ),
            // Positioned popup above navbar
            Positioned(
              bottom: bottomPadding,
              right: 12, // distance from right edge
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 0,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // You can add your buttons, text, images here
                  child: Center(
                    child: Text(
                      "Popup Above Navbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
