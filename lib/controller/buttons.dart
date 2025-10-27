import 'package:baloon_app/views/policy.dart';
import 'package:flutter/material.dart';

class AuthController {
  void completeLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PolicyPage()),
    );
  }
}
