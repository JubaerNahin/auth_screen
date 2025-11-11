import 'package:auth_screen_design/common%20widgets/radio_field.dart';
import 'package:auth_screen_design/features/auth/Personal_Info/widgets/castom_elevated_button.dart';
import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  final PageController pageController;
  const ExperiencePage({super.key, required this.pageController});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Text(
          'Lets\'s personalize your experience',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 30, 51),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40),
        Text(
          'What\'s your primary focus area',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 30, 51),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),

        RadioField(
          text: "Study & Learning",
          subtitle: "💡",
          onSelect: selectedIndex == 0,
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        SizedBox(height: 20),
        RadioField(
          text: "Career Growth",
          subtitle: "🎓",
          onSelect: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
        ),
        SizedBox(height: 20),

        RadioField(
          text: "Productivity",
          subtitle: "🚀",
          onSelect: selectedIndex == 2,
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
        ),
        SizedBox(height: 20),

        RadioField(
          text: "Health & Fitness",
          subtitle: "🏃",
          onSelect: selectedIndex == 3,
          onTap: () {
            setState(() {
              selectedIndex = 3;
            });
          },
        ),
        Expanded(child: SizedBox()),
        CustomElevatedButton(
          text: "Next 〉",
          onPressed: () {
            widget.pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          isEnable: selectedIndex != -1 ? true : false,
        ),
      ],
    );
  }
}
