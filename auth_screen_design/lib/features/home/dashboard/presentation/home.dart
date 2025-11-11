import 'package:auth_screen_design/common%20widgets/custom_navbar.dart';
import 'package:auth_screen_design/features/home/dashboard/presentation/dashboard.dart';
import 'package:auth_screen_design/features/goals_creation_screen/goal_screen.dart';
import 'package:auth_screen_design/features/habit_creation_screen/habit_screen.dart';
import 'package:auth_screen_design/features/user_profile_screen/profile_screen.dart';
import 'package:auth_screen_design/features/my_statistics_screen/stats_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    Dashboard(),
    GoalScreen(),
    HabitScreen(),
    StatsScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
