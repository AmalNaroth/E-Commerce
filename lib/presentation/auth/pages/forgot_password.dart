import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widget/app_bar/app_bar.dart';
import 'package:ecommerce/common/widget/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
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
          ],
        ),
      ),
    );
  }

  Widget _signingText() {
    return Text(
      "Forgot Password",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField() {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Email Address"),
    );
  }

  Widget _continueButton(context) {
    return BasicAppButton(text: "Continue", onPressed: () {});
  }

  Widget _createAccrount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Don't you have an account? "),
          TextSpan(
            text: "Create one",
            recognizer: TapGestureRecognizer()..onTap = () {},
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
