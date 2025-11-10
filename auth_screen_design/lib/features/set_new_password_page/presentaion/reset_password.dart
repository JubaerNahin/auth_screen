import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:auth_screen_design/common%20widgets/text_field.dart';
import 'package:auth_screen_design/features/set_new_password_page/widgets/popup_card..dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController newPassController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 30, 51),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Set New Password",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Make sure that the password is strong",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          text: 'New  Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 30, 51),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: newPassController,
                      hintText: '*******************',
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Confirm Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 30, 51),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: confirmPassController,
                      hintText: '******************',
                      isPassword: true,
                    ),
                    const SizedBox(height: 40),
                    Elevatedbutton(
                      onPressed: () => PopupCard.show(
                        context,
                        title: 'Password Successfully Reset',
                        message: 'message',
                        imagePath: Assets.images.a74CelkisGear.path,
                        //color: Colors.green,
                      ),
                      text: 'Reset Password',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
