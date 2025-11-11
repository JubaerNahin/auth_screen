import 'package:auth_screen_design/common%20widgets/common_text.dart';
import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AiCoach extends StatelessWidget {
  const AiCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Assets.images.ai.image(width: 100, height: 100),
                ),
                SizedBox(height: 20),
                CommonText(text: 'Set Your First Goal with Ai Coach'),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Type what you want to achieve and let VictoryS plan your path for you.',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 180,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 10),
                        CommonText(text: 'What do you want to achieve?'),
                        SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            // textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Run 10k un 8 weeks',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('✨ '),
                            Flexible(
                              child: Text(
                                'Our Ai coach will suggest milestones,a realistic time-line, and your first tasks.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Elevatedbutton(
                  text: 'Submit ✨',
                  onPressed: () {
                    Navigator.pushNamed(context, '/ai_plan_page');
                  },
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    onPressed: () {},
                    child: Text('Skip'),
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
