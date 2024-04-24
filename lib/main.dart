import 'package:expense_tracker/core/theme/theme.dart';
import 'package:expense_tracker/features/home_page/presentation/add_expense_page.dart/add_expense_page.dart';
import 'package:expense_tracker/features/home_page/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
