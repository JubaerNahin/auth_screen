import 'package:auth_screen_design/features/home/widget/home_screen_elevated_button_widget.dart';
import 'package:auth_screen_design/features/home/widget/home_screen_text_field.dart';
import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF143048),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white10,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Add a new task",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Task Name",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              HomeScreenTextField(hintText: 'Write project summary'),
              SizedBox(height: 20),
              Text("Goal", style: TextStyle(color: Colors.white, fontSize: 16)),
              SizedBox(height: 10),
              HomeScreenTextField(hintText: 'Health'),
              SizedBox(height: 20),
              Text(
                "Importance",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              HomeScreenTextField(hintText: 'Q1/Q2/Q3/Q4'),
              SizedBox(height: 20),
              Text(
                "Date Time",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              HomeScreenTextField(hintText: 'Select Your Time'),
              SizedBox(height: 20),
              Text(
                "Points",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              HomeScreenTextField(
                hintText: 'Auto Suggested by AI or manual inpput',
                
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  HomeScreenElevatedButtonWidget(
                    text: "Add Task",
                    color: Color(0xFFFFFFFF),
                    onPressed: () {},
                    textcolor: Color(0xFF143048),
                    //  backgroundColor: Color(0xFFFFFFFF),
                  ),
                  SizedBox(width: 20),
                  HomeScreenElevatedButtonWidget(
                    text: "Cancel",
                    color: Colors.transparent,
                    onPressed: () {},
                    textcolor: Colors.white,
                    //  backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
