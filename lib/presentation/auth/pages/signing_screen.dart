import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widget/app_bar/app_bar.dart';
import 'package:ecommerce/common/widget/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/sign_up.dart';
import 'package:ecommerce/presentation/auth/pages/enter_password_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigningScreen extends StatelessWidget {
  const SigningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signingText(),
            const SizedBox(height: 20),
            _emailField(),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccrount(context),
          ],
        ),
      ),
    );
  }

  Widget _signingText() {
    return Text(
      "Sign in",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField() {
    return TextField(decoration: InputDecoration(hintText: "Email"));
  }

  Widget _continueButton(context) {
    return BasicAppButton(
      text: "Continue",
      onPressed: () {
       AppNavigator.push(context, EnterPasswordScreen());
      },
    );
  }

  Widget _createAccrount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Don't you have an account? "),
          TextSpan(
            text: "Create one",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignUpScreen());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
