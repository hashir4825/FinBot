import 'package:fin_bot/Login_Page.dart';
import 'package:fin_bot/Signup_Page.dart';
import 'package:flutter/material.dart';

import 'Custom_Button.dart';

// Assuming WelcomeButton is defined elsewhere
// (if not, provide its implementation)

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background image directly within Scaffold
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            // Move all content within SafeArea for safe padding
            child: Column(
              children: [
                Flexible(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 40.0,
                    ),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome Back!\n',
                                style: TextStyle(
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text:
                                '\n Start Managing Your '
                                    'Finances',
                                style: TextStyle(
                                  fontSize: 20,
                                  // height: 0, // Remove if not intended
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Custom_Button(
                            buttonText: 'Sign in',
                            onTap: Login_Page(),
                            color: Colors.transparent,
                            textColor: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Custom_Button(
                            buttonText: 'Sign up',
                            onTap: SignUp_Page(),
                            color: Colors.white,
                            textColor: Color(0xFF416FDF)
                            //lightColorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
