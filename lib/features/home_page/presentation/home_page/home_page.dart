import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:expense_tracker/features/home_page/presentation/add_expense_page.dart/add_expense_page.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/alert_button.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/expense_container.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/expense_list_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
  const HomePage({super.key});

  Future<void> showDialogue(context) async {
    return showDialog<void>(
        context: context,
        // barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            surfaceTintColor: AppPalate.transparantColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '24-10-2024',
                      style: TextStyle(
                        color: AppPalate.darkColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AlertButton(
                          buttonName: 'Edit',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AddExpensePage(isEditing: true),
                              ),
                            );
                          },
                          color: const Color.fromARGB(255, 107, 111, 228),
                        ),
                        const SizedBox(width: 10),
                        AlertButton(
                          buttonName: 'Delete',
                          onTap: () {},
                          color: AppPalate.errorColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  'Coffee',
                  style: TextStyle(
                    color: AppPalate.borderColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'RS 5000',
                      style: TextStyle(
                        color: AppPalate.darkColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Coffee with Idiot',
                  style: TextStyle(
                    color: AppPalate.lightTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddExpensePage(),
            ),
          );
        },
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
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    'Expense History',
                    style: TextStyle(
                      color: AppPalate.borderColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              // NOTE This list view builder will be used for building indivdual date based sections
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            i < 1 ? 'Today' : 'yesterday',
                            style: const TextStyle(
                              fontSize: 11,
                              color: AppPalate.lightTextColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        // NOTE This list view builder will be used for building indivdual ExpenseListItem Widgets
                        ListView.builder(
                          padding: const EdgeInsets.all(0),
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (contex, i) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: ExpenseListItem(
                                onTap: () {
                                  showDialogue(context);
                                },
                                expenseName: 'Coffee',
                                expenseAmount: '134',
                                expenseDescription: 'afleiagn salfnoe dskgalj',
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
