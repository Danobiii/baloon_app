import 'package:flutter/material.dart';

class DateController {
  Future<void> pickDate(
    BuildContext context,
    TextEditingController controller,
  ) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      controller.text = selectedDate.toString().split(" ")[0];
    }
  }
}
