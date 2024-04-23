import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/expense_container.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/expense_list_item.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/view_all_button.dart';
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
                  // ViewAllButton(
                  //   onTap: () {},
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppPalate.lightTextColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  // The list view builder will be used
                  ListView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (contex, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ExpenseListItem(
                          onTap: () {},
                          expenseName: 'Coffee',
                          expenseAmount: '134',
                          expenseDescription: 'afleiagn salfnoe dskgalj',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
