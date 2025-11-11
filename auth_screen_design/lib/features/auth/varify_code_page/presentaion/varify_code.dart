import 'package:auth_screen_design/common%20widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VarifyCode extends StatelessWidget {
  const VarifyCode({super.key});

  @override
  Widget build(BuildContext context) {
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
                      "Varify Your Code",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 5, 30, 51),
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: const TextSpan(
                        text: 'We\'ve sent a code at ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 30, 51),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: 'johndoe123@gmail.com',
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 30, 51),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              // decorationThickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Pinput(length: 4),
                    SizedBox(height: 32),
                    Elevatedbutton(
                      text: 'Varify',
                      onPressed: () =>
                          Navigator.pushNamed(context, '/reset_password'),
                    ),
                    SizedBox(height: 32),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Varify Your Code",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Varify Your Code",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 5, 30, 51),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
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
