import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  final VoidCallback onTap;
  const ViewAllButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(92, 15),
          backgroundColor: AppPalate.transparantColor,
          shadowColor: AppPalate.transparantColor,
        ),
        child: const Text(
          'View All',
          style: TextStyle(
            fontSize: 12,
            color: AppPalate.lightTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
