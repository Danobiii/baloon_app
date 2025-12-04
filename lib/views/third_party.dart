import 'package:baloon_app/controller/navigation_controller.dart';
import 'package:baloon_app/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdParty extends StatefulWidget {
  const ThirdParty({super.key});

  @override
  State<ThirdParty> createState() => _ThirdPartyState();
}

class _ThirdPartyState extends State<ThirdParty> {
  final _formKey = GlobalKey<FormState>();
  final AuthController _authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            _authController.goBackToProcessClaims(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "STEP 03/04",
              style: TextStyle(color: Color.fromRGBO(189, 189, 189, 1)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "3rd Party Information\n",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 18, 72, 1),
                      fontSize: 20.sp,
                    ),
                  ),

                  TextSpan(
                    text: "Provide us with details of the third party",
                    style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  FormFields(
                    text: "Full Name",
                    labelText: "Full Name",
                    validatorMessage: "Please provide Full Name",
                  ),
                  SizedBox(height: 15.h),
                  FormFields(
                    text: "Email Address",
                    labelText: "Email Address",
                    validatorMessage: "Please provide email address",
                  ),
                  SizedBox(height: 15.h),
                  FormFields(
                    text: "Phone Number",
                    labelText: "Number",
                    validatorMessage: "Phone number is required",
                  ),
                  SizedBox(height: 15.h),
                  FormFields(
                    text: "Type of Vehicle",

                    validatorMessage: "Please specify vehicle type",
                  ),
                  SizedBox(height: 15.h),
                  FormFields(
                    text: "Model of Vehicle",

                    validatorMessage: "please specify vehicle model",
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
            Add(iconData: Icons.add, iconDesc: 'Add Another'),
            SizedBox(height: 20.h),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Color.fromRGBO(38, 139, 208, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _authController.navigateToUploadPage(context);
                  }
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Add extends StatelessWidget {
  final IconData iconData;
  final String iconDesc;
  final double? width;
  const Add({
    super.key,
    required this.iconData,
    required this.iconDesc,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100.w,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromRGBO(31, 18, 72, 1)),
        ),
      ),
      child: Row(children: [Icon(iconData, size: 20), Text(iconDesc)]),
    );
  }
}
