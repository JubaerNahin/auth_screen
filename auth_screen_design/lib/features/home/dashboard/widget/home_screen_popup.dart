import 'package:auth_screen_design/features/home/add_new_habit/presentation/add_new_habit.dart';
import 'package:auth_screen_design/features/home/add_new_task/presentation/add_new_task.dart';
import 'package:flutter/material.dart';

class HomeScreenPopup {
  static void show(BuildContext context) {
    final double bottomPadding = 120;

    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              bottom: bottomPadding,
              right: 12,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 300,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                                side: BorderSide(color: Color(0xFFEBECEF)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddNewTask(),
                                ),
                              );
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "📑 Add Task",
                                style: TextStyle(color: Color(0xFF143048)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                                side: BorderSide(color: Color(0xFFEBECEF)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddNewHabit(),
                                ),
                              );
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "🔁 Add Habit",
                                style: TextStyle(color: Color(0xFF143048)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                                side: BorderSide(color: Color(0xFFEBECEF)),
                              ),
                            ),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                // textAlign: TextAlign.start,
                                "⛰️ Add Goal",
                                style: TextStyle(color: Color(0xFF143048)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              width: 170,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                    side: BorderSide(color: Color(0xFFEBECEF)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "✨ Add Ai Quick",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Color(0xFF143048)),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF143048),
                                shape: BoxShape.circle,
                              ),
                              child: FloatingActionButton(
                                backgroundColor: Color(0xFF143048),
                                elevation: 0,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 18.0),
                                  child: Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ],
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
