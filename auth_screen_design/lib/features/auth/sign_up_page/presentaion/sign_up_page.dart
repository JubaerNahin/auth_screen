import 'package:auth_screen_design/common%20widgets/common_text.dart';
import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:auth_screen_design/common%20widgets/text_field.dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 30, 51),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "VictoryS",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Create Your Account",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 32),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: CommonText(text: 'Full Name'),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: controller,
                      hintText: 'John Doe',
                      isPassword: false,
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Email',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 30, 51),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                      controller: controller,
                      hintText: 'johndoe123@gmail.com',
                      isPassword: false,
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 5, 30, 51),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
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
                      controller: controller,
                      hintText: '******************',
                      isPassword: true,
                    ),
                    const SizedBox(height: 20),

                    const SizedBox(height: 20),

                    Elevatedbutton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/personal_info_page'),
                      text: 'Create a New Account',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            thickness: 1,
                            indent: 20,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          'Or',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 5, 30, 51),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            thickness: 1,
                            indent: 10,
                            endIndent: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print('Logged in via google'),
                              child: Assets.images.googleLogo.image(
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: 60),

                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    // offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print('Logged in via mac'),
                              child: Assets.images.macOsLogo.image(
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/'),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              color: const Color.fromARGB(255, 5, 30, 51),
                              decorationColor: const Color.fromARGB(
                                255,
                                5,
                                30,
                                51,
                              ),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
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
