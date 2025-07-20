import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widget/app_bar/app_bar.dart';
import 'package:ecommerce/common/widget/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordScreen extends StatelessWidget {
  const EnterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(),
            const SizedBox(height: 20),
            _passwordField(),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _forgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return Text(
      "Sign in",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField() {
    return TextField(decoration: InputDecoration(hintText: "Password"));
  }

  Widget _continueButton(context) {
    return BasicAppButton(text: "Continue", onPressed: () {});
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Forgot Password? "),
          TextSpan(
            text: "Reset",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, ForgotPasswordScreen());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
