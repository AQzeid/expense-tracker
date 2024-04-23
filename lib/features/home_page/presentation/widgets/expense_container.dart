import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenseContainer extends StatelessWidget {
  final String expenseAmount;
  const ExpenseContainer({super.key, this.expenseAmount = '0'});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle(
            [FontWeight fontWeight = FontWeight.normal,
            double fontSize = 15,
            Color color = AppPalate.whiteColor]) =>
        TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        );

    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [AppPalate.gradient1, AppPalate.gradient2],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Total Expense',
                  style: textStyle(FontWeight.w500, 15.0),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('₹', style: textStyle(FontWeight.w700, 18.0)),
                const SizedBox(width: 15),
                Text(
                  expenseAmount,
                  style: textStyle(FontWeight.w900, 20.0),
                ),
                const Spacer(),
                Text(
                  'RS',
                  style: textStyle(
                    FontWeight.w400,
                    15.0,
                    AppPalate.whiteColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
