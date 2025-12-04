import 'package:baloon_app/models/image_model.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baloon_app/controller/navigation_controller.dart';
import 'package:baloon_app/controller/upload_controller.dart';

class PictureUploadscreen extends StatefulWidget {
  const PictureUploadscreen({super.key});

  @override
  State<PictureUploadscreen> createState() => _PictureUploadscreenState();
}

class _PictureUploadscreenState extends State<PictureUploadscreen> {
  Widget buildUploadContainer({
    final String? galleryIcon,
    final String? noFile,
    required Function() onTapFunction,
  }) {
    return TextButton(
      onPressed: () {
        _showPickOptions();
      },

      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(67, 159, 202, 0.15)),
        ),
        child: Row(
          children: [
            Image.asset(AppImages.galleryLogo),
            Text(
              _uploadController.mediaName ?? "     Upload a picture",
              style: TextStyle(
                color: _uploadController.imageName != null
                    ? Colors.black
                    : Colors.grey,
                fontSize: 12.sp,
                fontWeight: _uploadController.imageName != null
                    ? FontWeight.w400
                    : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? fileType;
  final AuthController _authController = AuthController();
  final UploadController _uploadController = UploadController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            _authController.backToUploadScreen(context);
          },
        ),
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
                    text: "Picture Uploads\n",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 18, 72, 1),
                      fontSize: 20.sp,
                    ),
                  ),

                  TextSpan(
                    text:
                        "Follow the guidelines to upload pictures of the damage to help us acess the accident.",
                    style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            SeeSample(
              textOne: 'Take a close-up picture of the accident.',
              textTwo: ' See Sample',
            ),
            buildUploadContainer(
              noFile: "Upload a picture",
              galleryIcon: AppImages.galleryLogo,
              onTapFunction: () {
                _showPickOptions();
              },
            ),
            SizedBox(height: 20.h),
            SeeSample(
              textOne: "Take a close-up picture of the accident.",
              textTwo: " See Sample",
            ),
            buildUploadContainer(
              noFile: "Upload a picture",
              galleryIcon: AppImages.galleryLogo,
              onTapFunction: () {
                _showPickOptions();
              },
            ),
            SizedBox(height: 20.h),
            SeeSample(
              textOne: "Take a close-up picture of the accident.",
              textTwo: " See Sample",
            ),
            buildUploadContainer(
              noFile: "Upload a picture",
              galleryIcon: AppImages.galleryLogo,
              onTapFunction: () {
                _showPickOptions();
              },
            ),
            SizedBox(height: 20.h),
            SeeSample(
              textOne: "Take a close-up picture of the accident.",
              textTwo: " See Sample",
            ),
            buildUploadContainer(
              noFile: "Upload a picture",
              galleryIcon: AppImages.galleryLogo,
              onTapFunction: () {
                _showPickOptions();
              },
            ),
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
                  _authController.toVerifyUploadsScreen(context);
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
            CircleAvatar(
              maxRadius: 5.r,
              child: Icon(Icons.check, size: 10.sp),
            ),
          ],
        ),
      ),
    );
  }

  void _showPickOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("Pick from Camera"),
              onTap: () async {
                Navigator.pop(context);
                await _uploadController.pickFromCamera();
                {
                  setState(() {});
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.browse_gallery),
              title: Text("Pick from Gallery"),
              onTap: () async {
                Navigator.pop(context);
                _uploadController.pickFromGallery();
                {
                  setState(() {});
                }
              },
            ),
          ],
        );
      },
    );
  }
}

class SeeSample extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const SeeSample({super.key, required this.textOne, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textOne,
            style: TextStyle(color: Color.fromRGBO(102, 102, 102, 1)),
          ),
          TextSpan(
            text: textTwo,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color.fromRGBO(102, 102, 102, 1),
              fontWeight: FontWeight.w600,
            ),
            // recognizer: TapGestureRecognizer(),
          ),
        ],
      ),
    );
  }
}
