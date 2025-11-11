import 'package:baloon_app/views/policy.dart';
import 'package:flutter/material.dart';
import 'package:baloon_app/views/process_claims.dart';

class AuthController {
  void completeLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PolicyPage()),
    );
  }



  void claimsButton(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ProcessClaims()),
    );
  }



  void exitButton(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PolicyPage()),
    );
  }
}
