import 'package:auth_screen_design/features/Ai_page/presentation/ai_coach.dart';
import 'package:auth_screen_design/features/Ai_page/presentation/ai_plan_page.dart';
import 'package:auth_screen_design/features/personal_Info/presentation/personal_info_page.dart';
import 'package:auth_screen_design/features/personal_Info/presentation/sub_pages/age_page.dart';
import 'package:auth_screen_design/features/personal_Info/presentation/sub_pages/experience_page.dart';
import 'package:auth_screen_design/features/forgot_password%20_page/presentation/forgot_password.dart';
import 'package:auth_screen_design/features/login_page/presentation/login_page.dart';
import 'package:auth_screen_design/features/set_new_password_page/presentaion/reset_password.dart';
import 'package:auth_screen_design/features/sign_up_page/presentaion/sign_up_page.dart';
import 'package:auth_screen_design/features/varify_code_page/presentaion/varify_code.dart';
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
      initialRoute: '/',
      routes: {
        "/": (context) => LogInPage(),
        "/forgot_password": (context) => ForgotPassword(),
        "/varify_code": (context) => VarifyCode(),
        "/reset_password": (context) => ResetPassword(),
        "/sign_up": (context) => SignUpPage(),
        "/personal_info_page": (context) => PersonalInfoPage(),
        "/ai_coach": (context) => AiCoach(),
        "/ai_plan_page": (context) => AiPlanPage(),
      },
    );
  }
}
