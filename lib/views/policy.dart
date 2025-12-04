import 'package:baloon_app/controller/navigation_controller.dart';
import 'package:baloon_app/models/image_model.dart';
import 'package:baloon_app/models/policy_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  final AuthController _authController = AuthController();
  void _claimsRequest() {
    _authController.claimsButton(context);
  }

  final PageController _pageController = PageController(viewportFraction: 0.99);
  int _currentPage = 0;

  Widget _buildPolicyCard(PolicyCard card) {
    return Container(
      // width: double.infinity,
      // margin: EdgeInsets.only(right: 30.w), // Space between cards
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                  Image.asset(card.logo),
                  SizedBox(width: 10.w),
                  Text(
                    card.policy,
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                card.active,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(
                card.description,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                card.plateno,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                card.policyno,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 0.6),
                  fontSize: 12.sp,
                ),
              ),
              Text(
                card.pro,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 0.6),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                card.number,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                card.date,
                style: TextStyle(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              SizedBox(height: 20.h),
              Text("Active Policy"),
              SizedBox(height: 10.h),
              SizedBox(
                height: 200.h,
                // width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemCount: card.length,
                  itemBuilder: (context, index) {
                    return _buildPolicyCard(card[index]);
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: card.length,
                  effect: WormEffect(
                    dotHeight: 8.h,
                    dotWidth: 8.h,
                    activeDotColor: const Color.fromRGBO(0, 168, 158, 1),
                    dotColor: Colors.grey.shade300,
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: _claimsRequest,

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
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: action.map((item) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: item['color'],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(150.r),
                            bottomLeft: Radius.circular(150.r),
                            bottomRight: Radius.circular(150.r),
                          ),
                        ),
                        child: Image.asset(
                          item["image"],
                          width: 40.w,
                          height: 40.h,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        item["label"],
                        style: TextStyle(
                          color: item["textColor"],
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
              SizedBox(height: 10.h),
              Text(
                "Recent Claims",
                style: TextStyle(color: Color.fromRGBO(38, 79, 96, 1)),
              ),
              SizedBox(height: 5.h),
              GestureDetector(
                child: Column(
                  children: recents.map((item) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      padding: EdgeInsets.only(
                        left: 20.w,
                        top: 5.h,
                        bottom: 5.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),

                        border: Border(
                          // top: BorderSide(
                          //   color: const Color.fromRGBO(239, 239, 239, 1),
                          // ),
                          // bottom: BorderSide(
                          //   color: const Color.fromRGBO(239, 239, 239, 1),
                          // ),
                          // right: BorderSide(
                          //   color: const Color.fromRGBO(239, 239, 239, 1),
                          // ),
                          left: BorderSide(
                            width: 4.w,
                            color: item["containerColor"] ?? Colors.transparent,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(item["twocars"]),
                              Padding(
                                padding: EdgeInsetsGeometry.only(right: 15.w),
                              ),
                              Text(
                                item["third"],
                                style: TextStyle(color: item["thirdColor"]),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(item["claimsDesc"]),
                          SizedBox(height: 3.h),
                          Text(item["platenumber"]),
                          SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item["submitDate"]),

                              Text(
                                item["status"],
                                style: TextStyle(color: item["statusColor"]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Color(0xFF2E6F7E),
        child: Image.asset(AppImages.vectorLogo),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // height: 60,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Image.asset(AppImages.homeLogo), Text("Home")],
              ),
              SizedBox(width: 90.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppImages.telephoneLogo),
                  Text("Contact"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
