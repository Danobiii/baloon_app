import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baloon_app/controller/date_controller.dart';

class FormFields extends StatelessWidget {
  final String text;
  final String? labelText;
  final String validatorMessage;
  final TextEditingController? controller;
  final double? size;
  final double? padding;
  final Widget? date;
  final bool? keyboard;

  const FormFields({
    super.key,
    // required GlobalKey<FormState> formKey,
    required this.text,
    this.labelText,
    required this.validatorMessage,
    this.controller,
    this.size,
    this.padding,
    this.date,
    this.keyboard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 10.sp),
        TextFormField(
          // readOnly: keyboard,
          onTap: () {
            // _pickDate(context); // call your date picker function
          },
          controller: controller,
          decoration: InputDecoration(
            labelStyle: TextStyle(
              color: Color.fromRGBO(102, 102, 102, 1),
              fontWeight: FontWeight.w400,
            ),

            labelText: labelText,
            border: OutlineInputBorder(),

            contentPadding: EdgeInsets.symmetric(vertical: size ?? 15),

            suffixIcon: date,
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return validatorMessage;
            }
            return null;
          },
        ),
      ],
    );
  }
}
