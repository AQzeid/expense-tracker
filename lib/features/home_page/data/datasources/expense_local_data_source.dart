import 'package:expense_tracker/core/error/exceptions.dart';
import 'package:expense_tracker/features/home_page/data/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

abstract interface class ExpenseLocalDataSource {
  // Here using Future because we only are concerned about the datasource
  // Interface Segregation of SOLID principle
  void addExpense(ExpenseModel model);
}

class ExpenseLocalDataSourceImpl implements ExpenseLocalDataSource {
  final Box box;
  ExpenseLocalDataSourceImpl(this.box);
  @override
  void addExpense(ExpenseModel model) async {
    int itemLength = box.length;
    try {
      debugPrint(itemLength.toString());
      box.add(model);
      debugPrint(itemLength.toString());
      if (itemLength++ != box.length) {
        debugPrint('Expense is not added');
        throw DatabaseException('Expense is not added');
      }
      final response = await box.get(
        itemLength.toString(),
      );
      debugPrint(response.toString());
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }
}
