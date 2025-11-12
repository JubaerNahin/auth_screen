import 'package:auth_screen_design/features/auth/Ai_page/presentation/ai_coach.dart';
import 'package:auth_screen_design/features/auth/Ai_page/presentation/ai_plan_page.dart';
import 'package:auth_screen_design/features/auth/Personal_Info/presentation/personal_info_page.dart';
import 'package:auth_screen_design/features/home/dashboard/presentation/home.dart';
import 'package:auth_screen_design/features/auth/forgot_password%20_page/presentation/forgot_password.dart';
import 'package:auth_screen_design/features/auth/login_page/presentation/login_page.dart';
import 'package:auth_screen_design/features/auth/set_new_password_page/presentaion/reset_password.dart';
import 'package:auth_screen_design/features/auth/sign_up_page/presentaion/sign_up_page.dart';
import 'package:auth_screen_design/features/auth/varify_code_page/presentaion/varify_code.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        "/": (context) => LogInPage(),
        "/forgot_password": (context) => ForgotPassword(),
        "/varify_code": (context) => VarifyCode(),
        "/reset_password": (context) => ResetPassword(),
        "/sign_up": (context) => SignUpPage(),
        "/personal_info_page": (context) => PersonalInfoPage(),
        "/ai_coach": (context) => AiCoach(),
        "/ai_plan_page": (context) => AiPlanPage(),
        "/home": (context) => Home(),
      },
    );
  }
}
