import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:expense_tracker/features/home_page/presentation/widgets/expense_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpensePage extends StatefulWidget {
  final bool isEditing;
  const AddExpensePage({
    super.key,
    this.isEditing = false,
  });

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  final amountController = TextEditingController();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');

  @override
  void dispose() {
    amountController.dispose();
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // NOTE - Use "formKey.currentState.validate()" to validate all the form fields on submission
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        surfaceTintColor: AppPalate.transparantColor,
        title: Text(
          widget.isEditing ? "Edit Expense" : "Add Expense",
          style: const TextStyle(
              color: AppPalate.darkColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 60,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppPalate.gradient3,
        child: Icon(widget.isEditing ? Icons.check : Icons.add,
            size: 30, color: AppPalate.whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                ExpenseInputField(
                  hintText: 'Amount',
                  controller: amountController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                ExpenseInputField(
                  hintText: 'Name',
                  controller: nameController,
                ),
                const SizedBox(height: 10),
                ExpenseInputField(
                  hintText: 'Description',
                  controller: descriptionController,
                ),
                const SizedBox(height: 10),
                CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    selectedDayHighlightColor: AppPalate.gradient3,
                  ),
                  onValueChanged: (value) {
                    String formatedDate = formatter.format(value.first!);
                    debugPrint(value.first.toString());
                    debugPrint(formatedDate);
                  },
                  value: [selectedDate],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
