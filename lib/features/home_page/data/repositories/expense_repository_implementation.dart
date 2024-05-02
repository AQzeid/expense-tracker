import 'package:expense_tracker/core/error/failure.dart';
import 'package:expense_tracker/features/home_page/data/datasources/expense_local_data_source.dart';
import 'package:expense_tracker/features/home_page/data/models/expense_model.dart';
import 'package:expense_tracker/features/home_page/domain/repositories/expense_repository.dart';
import 'package:fpdart/src/either.dart';

class ExpenseRepositoryImplementation implements ExpenseRepository {
  final ExpenseLocalDataSource expenseLocalDataSource;
  ExpenseRepositoryImplementation(this.expenseLocalDataSource);
  @override
  Future<Either<Failure, bool>> addExpense({
    required String name,
    required String description,
    required DateTime date,
    required String amount,
  }) async {
    expenseLocalDataSource.addExpense(
      ExpenseModel(
        name: name,
        description: description,
        date: date,
        amount: amount,
      ),
    );
    return right(true);
  }
}
