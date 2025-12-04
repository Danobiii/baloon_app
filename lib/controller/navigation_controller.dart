import 'package:baloon_app/views/accident_infoscreen.dart';
import 'package:baloon_app/views/claims_sent.dart';
import 'package:baloon_app/views/picture_uploadscreen.dart';
import 'package:baloon_app/views/policy.dart';
import 'package:baloon_app/views/third_party.dart';
import 'package:baloon_app/views/upload.dart';
import 'package:baloon_app/views/verify_uploads.dart';
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

  void navigateAccidentInformation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccidentInfoscreen()),
    );
  }

  void goBackToProcessClaims(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateToThirdPartyInfo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdParty()),
    );
  }

  void navigateToUploadPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Upload()));
  }

  void backToThirdPartyScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void toPictureUploadScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PictureUploadscreen()),
    );
  }

  void backToUploadScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void toVerifyUploadsScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerifyUploads()),
    );
  }

  void navigateBackToUploadScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateToClaimsSentPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClaimSentPage()),
    );
  }
}
