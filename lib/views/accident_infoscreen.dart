import 'package:baloon_app/controller/navigation.dart';
import 'package:baloon_app/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccidentInfoscreen extends StatefulWidget {
  const AccidentInfoscreen({super.key});

  @override
  State<AccidentInfoscreen> createState() => _AccidentInfoscreenState();
}

class _AccidentInfoscreenState extends State<AccidentInfoscreen> {
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
              "STEP 02/04",
              style: TextStyle(color: Color.fromRGBO(189, 189, 189, 1)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Accident Information\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(31, 18, 72, 1),
                        fontSize: 20.sp,
                      ),
                    ),

                    TextSpan(
                      text: "Provide us with details about the accident",
                      style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    FormFields(
                      text: "Select Vehicle",
                      labelText: "Vehicle",
                      validatorMessage: "Please select Vehicle",
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: FormFields(
                            text: "Date of Accident",
                            labelText: "Date",
                            validatorMessage: "Please select Date",
                          ),
                        ),
                        SizedBox(width: 30.w),
                        Expanded(
                          child: FormFields(
                            text: "Time of Accident",
                            labelText: "Time",
                            validatorMessage: "Please select Time",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    FormFields(
                      text: "Accident Type",
                      // labelText: "Vehicle",
                      validatorMessage: "Please select Vehicle",
                    ),
                    SizedBox(height: 20.h),
                    FormFields(
                      text: "Describe the Accident",
                      labelText: "Description",
                      validatorMessage: "Please select Vehicle",
                      size: 80.h,
                    ),
                    SizedBox(height: 20.h),
                    FormFields(
                      text: "Was there a 3rd party?",
                      labelText: "Yes/No",
                      validatorMessage: "Please select Vehicle",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Color.fromRGBO(38, 139, 208, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _authController.navigateToThirdPartyInfo(context);
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
            ],
          ),
        ),
      ),
    );
  }
}
