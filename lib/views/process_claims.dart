import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProcessClaims extends StatefulWidget {
  const ProcessClaims({super.key});

  @override
  State<ProcessClaims> createState() => _ProcessClaimsState();
}

class _ProcessClaimsState extends State<ProcessClaims> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentGeometry.topRight,
              child: CloseButton(color: Color.fromRGBO(38, 139, 208, 1)),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Let’s help you \n",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 18, 72, 1),
                      fontSize: 20.sp,
                    ),
                  ),

                  TextSpan(
                    text: "Process your claims faster",
                    style: TextStyle(
                      color: Color.fromRGBO(19, 69, 103, 1),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Our claims processes are seamless and consistent across all touch points. Start your claims journey here by filling the form below.",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(102, 102, 102, 1),
              ),
            ),
            SizedBox(height: 30.h),

            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Policy Type"),
                  SizedBox(height: 10.sp),
                  TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                      ),
                      labelText: "Auto Insurance ",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Auto Insurance";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 60.h),
                  Center(
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(38, 139, 208, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 149.w,
                          vertical: 20.h,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
