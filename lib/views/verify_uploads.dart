import 'package:baloon_app/views/third_party.dart';
import 'package:baloon_app/widgets/reusable_uploadwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baloon_app/controller/upload_controller.dart';
import 'package:baloon_app/controller/navigation_controller.dart';

import 'package:baloon_app/models/image_model.dart';

class VerifyUploads extends StatefulWidget {
  const VerifyUploads({super.key});

  @override
  State<VerifyUploads> createState() => _VerifyUploadsState();
}

class _VerifyUploadsState extends State<VerifyUploads> {
  final UploadController controller = UploadController();
  final AuthController _authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            _authController.navigateBackToUploadScreen(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "STEP 04/04",
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
                    text: "Uploads\n",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 18, 72, 1),
                      fontSize: 20.sp,
                    ),
                  ),

                  TextSpan(
                    text: "Kindly provide the following documents",
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
            ReusableUploadwidget(
              title: "Picture Upload",
              description:
                  "Upload pictures of the damaged vehicle and the surroundings",
              iconPath: AppImages.camera,
              fileType: controller.imageName,
              uploadController: controller,
              onTapFunction: () async {
                await controller.openCamera();
                setState(() {});
              },
            ),

            ReusableUploadwidget(
              title: "Video Upload",
              description:
                  "Take a video recording of the car showing the damaged parts",
              iconPath: AppImages.video,
              fileType: controller.videoName,
              uploadController: controller,
              onTapFunction: () async {
                await controller.openCameraForVideo();
                setState(() {});
              },
            ),
            ReusableUploadwidget(
              title: "Repair quote",
              description: "Send us an estimated cost of repairs.",
              iconPath: AppImages.document,
              uploadController: controller,
              fileType: controller.fileName,
              onTapFunction: () async {
                await controller.pickDocument();
                setState(() {});
              },
            ),

            SizedBox(height: 50.h),

            Add(
              iconData: Icons.add,
              iconDesc: "Upload other Documents",
              width: 175.w,
            ),
            SizedBox(height: 50.h),
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
                  _authController.navigateToClaimsSentPage(context);
                },
                child: Text(
                  "Submit",
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
