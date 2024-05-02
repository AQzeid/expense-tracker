import 'package:expense_tracker/core/theme/theme.dart';
import 'package:expense_tracker/features/home_page/data/datasources/expense_local_data_source.dart';
import 'package:expense_tracker/features/home_page/data/repositories/expense_repository_implementation.dart';
import 'package:expense_tracker/features/home_page/domain/usecases/add_expense.dart';
import 'package:expense_tracker/features/home_page/presentation/bloc/bloc/expense_bloc.dart';
import 'package:expense_tracker/features/home_page/presentation/home_page/home_page.dart';
import 'package:expense_tracker/init_dependancies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(MultiBlocProvider(
    providers: [
      // NOTE Below is code for using a single bloc provider. We will be using dependancy injection using getIt to manage this much of boilerplate.
      // /*
      BlocProvider(
        create: (_) => serviceLocator<ExpenseBloc>(),
      ),
      // */
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.whiteThemeMode,
      home: const HomePage(),
    );
  }
}
