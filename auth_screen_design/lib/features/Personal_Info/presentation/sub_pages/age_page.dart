import 'package:auth_screen_design/common%20widgets/radio_field.dart';
import 'package:auth_screen_design/features/Personal_Info/widgets/castom_elevated_button.dart';
import 'package:flutter/material.dart';

class AgePage extends StatefulWidget {
  final PageController pageController;
  AgePage({super.key, required this.pageController});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Text(
          'Let\'s get to know you better!',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 30, 51),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40),
        Text(
          'How Old are you?',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 30, 51),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),

        RadioField(
          text: "12-18",
          subtitle: "I'm Student",
          onSelect: selectedIndex == 0,
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        SizedBox(height: 20),
        RadioField(
          text: "18-24",
          subtitle: "I'm young adults",
          onSelect: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
        ),
        SizedBox(height: 20),

        RadioField(
          text: "24-40",
          subtitle: "I'm middle age adults",
          onSelect: selectedIndex == 2,
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
        ),
        SizedBox(height: 20),

        RadioField(
          text: "40 Above",
          subtitle: "I'm old adults",
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
