import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widget/app_bar/app_bar.dart';
import 'package:ecommerce/common/widget/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/gender_and_age.dart';
import 'package:ecommerce/presentation/auth/pages/signing_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createAccountText(),
            const SizedBox(height: 20),
            _textField(controller: emailController, hintText: "First Name"),
            const SizedBox(height: 20),
            _textField(controller: emailController, hintText: "Last Name"),
            const SizedBox(height: 20),
            _textField(controller: emailController, hintText: "Email Address"),
            const SizedBox(height: 20),
            _textField(controller: emailController, hintText: "Password"),
            const SizedBox(height: 20),
            _signin(context),
            const SizedBox(height: 20),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _createAccountText() {
    return Text(
      "Create Account",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _textField({
    required String hintText,
    required TextEditingController controller,
  }) {
    return TextField(
      decoration: InputDecoration(hintText: hintText),
      controller: controller,
    );
  }

  Widget _continueButton(context) {
    return BasicAppButton(
      text: "Continue",
      onPressed: () {
        AppNavigator.push(context, GenderAndAgeSelectionPage());
      },
    );
  }

  Widget _signin(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Do you have an account? "),
          TextSpan(
            text: "Sign in",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SigningScreen());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
