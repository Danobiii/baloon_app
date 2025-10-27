import 'package:baloon_app/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PolicyPage extends StatefulWidget {
  
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  final int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello John,",
                    style: TextStyle(
                      color: const Color.fromRGBO(51, 104, 127, 1),
                    ),
                  ),

                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: const Color.fromRGBO(177, 216, 242, 1),
                    child: Text(
                      "AL",
                      style: TextStyle(
                        color: const Color.fromRGBO(23, 90, 135, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text("Active Policy"),
              SingleChildScrollView(
                child: GestureDetector(
                  child: Container(
                    width: 315.w,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                      vertical: 15.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 168, 158, 1),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppImages.car),
                                SizedBox(width: 10.w),
                                Text(
                                  "AUTOFLEX POLICY",
                                  style: TextStyle(
                                    color: const Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Active",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              "2017 lexus RS 350",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "EKY287FV",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Policy No",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 0.6),
                              ),
                            ),
                            Text(
                              "Protection ends",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 0.6),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "212345",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "22/03/2022",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              ElevatedButton(
                onPressed: null,

                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 125.w,
                    vertical: 15.h,
                  ),

                  backgroundColor: Color.fromRGBO(38, 79, 97, 1),
                ),
                child: Text(
                  "Make a claim",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 14.sp,
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
