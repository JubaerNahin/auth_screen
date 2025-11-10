import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:auth_screen_design/common%20widgets/text_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
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
              color: const Color.fromARGB(255, 255, 255, 255),
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "Email",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 5, 30, 51),
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

                    SizedBox(height: 10),
                    CustomTextField(
                      controller: emailController,
                      hintText: "johndoe123@gmail.com",
                    ),
                    SizedBox(height: 20),
                    Elevatedbutton(text: 'Submit', onPressed: () {}),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Remembered Password?',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              color: const Color.fromARGB(255, 5, 30, 51),

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
