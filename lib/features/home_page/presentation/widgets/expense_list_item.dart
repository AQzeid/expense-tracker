import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class ExpenseListItem extends StatelessWidget {
  final VoidCallback onTap;
  final String expenseName;
  final String expenseDescription;
  final String expenseAmount;
  const ExpenseListItem({
    super.key,
    required this.onTap,
    required this.expenseName,
    required this.expenseAmount,
    this.expenseDescription = 'No description',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppPalate.lightBodyColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppPalate.gradient2,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.coffee,
                    color: AppPalate.whiteColor,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expenseName,
                    style: const TextStyle(
                      color: AppPalate.borderColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    expenseDescription,
                    style: const TextStyle(
                      color: AppPalate.lightTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  '₹ $expenseAmount',
                  style: const TextStyle(
                    color: AppPalate.borderColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
