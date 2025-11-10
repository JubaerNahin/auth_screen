import 'package:auth_screen_design/common%20widgets/radio_field.dart';
import 'package:auth_screen_design/features/personal_Info/widgets/castom_elevated_button.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  final PageController pageController;
  const GenderPage({super.key, required this.pageController});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
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
          'What\'s your gender?',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 30, 51),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),

        RadioField(
          text: "Female",
          subtitle: "👩",
          onSelect: selectedIndex == 0,
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        SizedBox(height: 20),
        RadioField(
          text: "Male",
          subtitle: "👨",
          onSelect: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = 1;
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
