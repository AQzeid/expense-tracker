import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  final Color color;
  const AlertButton(
      {super.key,
      required this.buttonName,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            buttonName,
            style: const TextStyle(
              color: AppPalate.whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
