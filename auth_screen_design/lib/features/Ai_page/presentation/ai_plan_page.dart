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
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                height: 450,
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
                        height: 210,

                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(children: [
        
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
