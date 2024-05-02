import 'package:expense_tracker/features/home_page/domain/usecases/add_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  // AddExpense is the usecase - the only point presentation communicates with business logic
  final AddExpense _addExpense;
  ExpenseBloc({required AddExpense addExpense})
      // This initialiser list help make _addExpense stay private.
      : _addExpense = addExpense,
        super(AddExpenseInitial()) {
    on<AddExpenseEvent>(
      (event, emit) async {
        // To make UI data elements accessible via event, here AddExpenseEvent is given required parameters.
        final result = await _addExpense(
          AddExpenseParams(
            name: event.name,
            description: event.description,
            date: event.date,
            amount: event.amount,
          ),
        );
        result.fold(
          (l) => emit(AddExpenseFailure(l.message)),
          (r) => emit(AddExpenseSuccess()),
        );
      },
    );
  }
}
