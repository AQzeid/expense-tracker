import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class ExpenseInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  const ExpenseInputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppPalate.lightTextColor,
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText cannot be empty";
        }
        return null;
      },
    );
  }
}
