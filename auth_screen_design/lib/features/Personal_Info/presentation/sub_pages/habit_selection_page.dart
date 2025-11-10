import 'package:auth_screen_design/features/Personal_Info/widgets/radio_button_checked_field.dart';
import 'package:auth_screen_design/features/personal_Info/widgets/castom_elevated_button.dart';
import 'package:auth_screen_design/features/set_new_password_page/widgets/popup_card..dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HabitSelectionPage extends StatefulWidget {
  final PageController pageController;
  const HabitSelectionPage({super.key, required this.pageController});

  @override
  State<HabitSelectionPage> createState() => _HabitSelectionPageState();
}

class _HabitSelectionPageState extends State<HabitSelectionPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Start Strong with Healthy Habits',
              style: TextStyle(
                color: const Color.fromARGB(255, 5, 30, 51),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Choose a few simple habits to kick-off your dauily victories. You can edit them anytime later',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 5, 30, 51),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 20),

          RadioButtonCheckedField(
            title: 'Drink Water',
            subtitle: 'Every Weekday',
            isSelected: selectedIndex == 0,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 0) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = 0;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),
          RadioButtonCheckedField(
            title: 'Exercise',
            subtitle: '2 days a week',
            isSelected: selectedIndex == 1,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 1) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = 1;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),
          RadioButtonCheckedField(
            title: 'Read',
            subtitle: 'Daily 20 mins',
            isSelected: selectedIndex == 2,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 2) {
                  selectedIndex = 1;
                } else {
                  selectedIndex = 2;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),
          RadioButtonCheckedField(
            title: 'Meditate',
            subtitle: 'Daily 10 mins',
            isSelected: selectedIndex == 3,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 3) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = 3;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),
          RadioButtonCheckedField(
            title: 'Healthy lunch',
            subtitle: 'Everyday',
            isSelected: selectedIndex == 4,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 4) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = 4;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),
          RadioButtonCheckedField(
            title: 'Sleep early',
            subtitle: 'Everyday',
            isSelected: selectedIndex == 5,
            icon: const Icon(Icons.water_drop_outlined, color: Colors.blue),
            points: '10pts',

            onTap: () {
              setState(() {
                if (selectedIndex == 5) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = 5;
                }
              });
            },
            time: '9:00 AM/12:00 PM',
          ),
          SizedBox(height: 20),

          CustomElevatedButton(
            text: "Next 〉",
            onPressed: () => PopupCard.show(
              extraElevated: true,
              context,
              title: 'Greate Choice',
              message:
                  'Your selected habits have been added to your daily plan',
              imagePath: Assets.images.a74CelkisGear.path,
              //color: Colors.green,
            ),
            isEnable: selectedIndex != -1 ? true : false,
          ),
        ],
      ),
    );
  }
}
