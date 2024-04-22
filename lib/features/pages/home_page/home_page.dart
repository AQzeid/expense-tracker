import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:expense_tracker/features/pages/widgets/expense_container.dart';
import 'package:expense_tracker/features/pages/widgets/expense_list_item.dart';
import 'package:expense_tracker/features/pages/widgets/view_all_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppPalate.gradient3,
        child: const Icon(Icons.add, size: 30, color: AppPalate.whiteColor),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const ExpenseContainer(),
              // Expense list section starts
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All Expenses',
                    style: TextStyle(
                      color: AppPalate.borderColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // The view all button to view all expenses in a new page
                  ViewAllButton(
                    onTap: () {},
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppPalate.lightTextColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  ExpenseListItem(
                    onTap: () {},
                    expenseName: 'Coffee',
                    expenseAmount: '1500',
                    expenseDescription: 'Cofee with milk',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
