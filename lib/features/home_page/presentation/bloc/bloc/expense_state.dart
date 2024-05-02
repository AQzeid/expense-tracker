part of 'expense_bloc.dart';

@immutable
sealed class ExpenseState {}

final class AddExpenseInitial extends ExpenseState {}

final class AddExpenseLoading extends ExpenseState {}

final class AddExpenseSuccess extends ExpenseState {}

final class AddExpenseFailure extends ExpenseState {
  final String message;
  AddExpenseFailure(this.message);
}
