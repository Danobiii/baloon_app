import 'package:baloon_app/controller/upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baloon_app/models/image_model.dart';

class ReusableUploadwidget extends StatelessWidget {
  final String? title;
  final String? description;
  final String? iconPath;
  final String? fileType;
  final UploadController? uploadController;
  final Function() onTapFunction;
  const ReusableUploadwidget({
    super.key,
    this.title,
    this.description,
    this.iconPath,
    this.fileType,
    required this.onTapFunction,
    this.uploadController,
  });

  @override
  Widget build(BuildContext context) {
    final hasFiles = uploadController?.selectedFiles.isNotEmpty ?? false;
    final fileCount = uploadController?.selectedFiles.length ?? 0;
    return TextButton(
      onPressed: onTapFunction,
      child: Container(
        padding: EdgeInsets.all(10.sp),

        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.5.w),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(iconPath ?? AppImages.camera),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                  const SizedBox(height: 5),
                  if (fileType != null)
                    Text(
                      fileType ?? description ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  else
                    Text(
                      description ?? "",
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                  if (uploadController != null)
                    Row(
                      children: [
                        if (hasFiles)
                          CircleAvatar(
                            radius: 10.r,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.check,
                              size: 14,
                              color: Colors.white,
                            ),
                          )
                        else
                          SizedBox(width: 20),

                        SizedBox(width: 10),
                        Text(
                          hasFiles
                              ? "$fileCount file(s) selected"
                              : 'No file selected',
                          style: TextStyle(
                            color: hasFiles ? Colors.black : Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  // Text(
                  //   description ?? "",
                  //   style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  // ),
                  // if (controller.imageFile != null)
                  //   Image.file(controller.imageFile!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
