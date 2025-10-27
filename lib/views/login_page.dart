import 'package:baloon_app/controller/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baloon_app/models/image_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController _authController = AuthController();
  void _handleLogin() {
    _authController.completeLogin(context);
  }

  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),
            Center(child: Image.asset(AppImages.logo)),
            SizedBox(height: 70.h),
            Text(
              "Login",
              style: TextStyle(
                fontFamily: "raleway",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 40.h),
            Text("Phone Number"),
            TextField(
              decoration: InputDecoration(
                hintText: "john.doe@gmail.com",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 40.h),
            Text("Password"),
            TextField(
              decoration: InputDecoration(
                hintText: "***********",
                hintStyle: TextStyle(),
              ),
            ),
            SizedBox(height: 10.h),

            Row(
              children: [
                Transform.translate(
                  offset: Offset(
                    -12,
                    0,
                  ), //to override the internal padding checkbox has
                  child: Checkbox(
                    activeColor: const Color.fromRGBO(38, 79, 96, 1),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = true;
                      });
                    },
                    checkColor: Colors.white,
                  ),
                ),
                SizedBox(width: 0.w),
                Text(
                  "Stay Connected",
                  style: TextStyle(fontFamily: "Karla-Bold"),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: _handleLogin,

              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                backgroundColor: const Color.fromRGBO(38, 79, 96, 1),
                padding: EdgeInsets.symmetric(
                  horizontal: 147.w,
                  vertical: 26.h,
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20.h),
            Center(child: Text("Forgot Password")),
            SizedBox(height: 25.h),
            Center(child: Text("Change Language")),
],
        ),
      ),
    );
  }
}
