import 'package:auth_screen_design/features/auth/Personal_Info/presentation/sub_pages/age_page.dart';
import 'package:auth_screen_design/features/auth/Personal_Info/presentation/sub_pages/experience_page.dart';
import 'package:auth_screen_design/features/auth/Personal_Info/presentation/sub_pages/gender_page.dart';
import 'package:auth_screen_design/features/auth/Personal_Info/presentation/sub_pages/habit_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PersonalInfoPage extends StatelessWidget {
  PersonalInfoPage({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),

              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new, size: 18),
                    ),
                  ),

                  SizedBox(width: 20),

                  // Page Indicator
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    onDotClicked: (index) => _pageController.animateToPage(
                      index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                    effect: WormEffect(
                      spacing: 30,
                      dotWidth: 48,
                      dotHeight: 4,
                      dotColor: Colors.grey.shade400,
                      activeDotColor: const Color.fromARGB(255, 5, 30, 51),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // PageView (takes remaining space)
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    AgePage(pageController: _pageController),
                    GenderPage(pageController: _pageController),
                    ExperiencePage(pageController: _pageController),
                    HabitSelectionPage(pageController: _pageController),
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
