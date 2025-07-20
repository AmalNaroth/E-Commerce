import 'package:flutter/material.dart';

class AppBottomSheet {
 static Future<void> display(BuildContext context,Widget widget)async{
    return showModalBottomSheet(context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25)
      )
    ),
     builder: (_) {
      return widget;
    },);
  }
}