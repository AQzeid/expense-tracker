part of 'expense_bloc.dart';

@immutable
sealed class ExpenseEvent {}

final class AddExpenseEvent extends ExpenseEvent {
  final String name;
  final String description;
  final DateTime date;
  final String amount;

  AddExpenseEvent({
    required this.name,
    required this.description,
    required this.date,
    required this.amount,
  });
}
