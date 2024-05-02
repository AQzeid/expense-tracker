import 'package:expense_tracker/features/home_page/domain/entities/expense.dart';

class ExpenseModel extends Expense {
  ExpenseModel({
    required super.name,
    required super.description,
    required super.date,
    required super.amount,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      name: json['name'] ?? [''],
      description: json['description'] ?? [''],
      date: DateTime.parse(json['date'] ?? ['']),
      amount: json['amount'] ?? [''],
    );
  }
}
