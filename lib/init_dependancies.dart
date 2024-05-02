import 'package:expense_tracker/features/home_page/data/datasources/expense_local_data_source.dart';
import 'package:expense_tracker/features/home_page/data/repositories/expense_repository_implementation.dart';
import 'package:expense_tracker/features/home_page/domain/repositories/expense_repository.dart';
import 'package:expense_tracker/features/home_page/domain/usecases/add_expense.dart';
import 'package:expense_tracker/features/home_page/presentation/bloc/bloc/expense_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

final serviceLocator = GetIt.instance;

// NOTE Use separate functions to initialise separate dependancies
// Meaning Authentication related dependencies and expense related dependencies should be in seperate functions.

// NOTE - Use
// serviceLocator.registerFactory() - for initialising a new instance of a registered type every time it's requested
// use this when you need a type that shouldn't be used across the application and need to be created ON DEMAND

// serviceLocator.registerLazySingleton() - for initialsing a single instance which is created once and used across the apps life time.
// Use this when you need to have only a single instance of the dependancy throughout the app

// NOTE Make sure to register dependencies first and then register the blocs

Future<void> initDependencies() async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;
  final box = Hive.box(name: 'Expenses');

  serviceLocator.registerLazySingleton(() => Hive.box(name: 'Expenses'));
}

void _initExpense() {
  serviceLocator.registerFactory<ExpenseLocalDataSource>(
    () => ExpenseLocalDataSourceImpl(
      serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<ExpenseRepository>(
    () => ExpenseRepositoryImplementation(
      serviceLocator(),
    ),
  );

  serviceLocator.registerFactory(
    () => AddExpense(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ExpenseBloc(
      addExpense: serviceLocator(),
    ),
  );
}
