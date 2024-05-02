import 'package:expense_tracker/core/error/failure.dart';
import 'package:expense_tracker/core/usecases/usecase.dart';
import 'package:expense_tracker/features/home_page/domain/repositories/expense_repository.dart';
import 'package:fpdart/src/either.dart';

class AddExpense implements UseCase<void, AddExpenseParams> {
  final ExpenseRepository repository;
  const AddExpense(this.repository);
  @override
  Future<Either<Failure, void>> call(AddExpenseParams params) async {
    return await repository.addExpense(
      name: params.name,
      description: params.description,
      date: params.date,
      amount: params.amount,
    );
  }
}

class AddExpenseParams {
  final String name;
  final String description;
  final DateTime date;
  final String amount;

  AddExpenseParams({
    required this.name,
    required this.description,
    required this.date,
    required this.amount,
  });
}
