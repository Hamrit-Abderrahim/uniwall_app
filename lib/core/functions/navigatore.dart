import 'package:flutter/material.dart';

class Navigate {
  static void navigateAndReplace(context, widget) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );
  }

//*********Navigate To***************
  static void navigateTo(context, widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
