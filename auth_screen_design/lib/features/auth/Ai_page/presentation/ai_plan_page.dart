import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AiPlanPage extends StatelessWidget {
  const AiPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 415,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 223, 207, 64),
                        Colors.blue,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.images.running.image(width: 100, height: 100),
                      SizedBox(height: 20),
                      Text(
                        "Fun 10k in 8 weeks",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Intermediate Milestone",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 185,

                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Week', textAlign: TextAlign.center),
                                  SizedBox(width: 60),
                                  Text(
                                    'Description',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                color: Colors.grey.shade300,
                              ),

                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Week', textAlign: TextAlign.center),
                                  SizedBox(width: 60),
                                  Text(
                                    'Ruin 2k without stopping',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                color: Colors.grey.shade300,
                              ),

                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Week', textAlign: TextAlign.center),
                                  SizedBox(width: 60),
                                  Text(
                                    'Run 5k comfortably',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                color: Colors.grey.shade300,
                              ),

                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Week', textAlign: TextAlign.center),
                                  SizedBox(width: 60),
                                  Text(
                                    'Run 7k at already pace',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0,
                                color: Colors.grey.shade300,
                              ),

                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text('Week', textAlign: TextAlign.center),
                                  SizedBox(width: 60),
                                  Text(
                                    'Compile a 10k run',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Suggested Habits & Tasks:',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Run 3x per week (Mon/Wed/Fri 7:00 AM)'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Stetch 10 minutes after each run'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Long run time & distance in app'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Target:",
                            style: TextStyle(
                              color: Colors.black54,
                              // fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: "700 points in 8 weeks",
                                style: TextStyle(
                                  color: Colors.red,
                                  // fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.star, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Elevatedbutton(text: 'Accept Plan', onPressed: () {}),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Edit Plan',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Skip for Now',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
