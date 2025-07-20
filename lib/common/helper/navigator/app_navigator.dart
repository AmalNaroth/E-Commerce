import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppNavigator {
  static void pushReplacement(BuildContext context, Widget screen){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screen,));
  }

  static void push(BuildContext context, Widget screen){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen,));
  }
}