import 'package:expense_tracker/core/error/failure.dart';
import 'package:expense_tracker/features/home_page/domain/entities/expense.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ExpenseRepository {
  Future<Either<Failure, void>> addExpense({
    required String name,
    required String description,
    required DateTime date,
    required String amount,
  });

  // Future<Either<Failure, String>> viewExpense({
  //   required String id,
  //   required String name,
  //   required String description,
  //   required String date,
  //   required String amount,
  // });

  // Future<Either<Failure, String>> updateExpense({
  //   required String name,
  //   required String description,
  //   required String date,
  //   required String amount,
  // });

  // Future<Either<Failure, String>> deleteExpense({
  //   required String id,
  // });
}
