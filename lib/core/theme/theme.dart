import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final whiteThemeMode = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppPalate.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppPalate.backgroundColor,
      ),
      cardTheme: const CardTheme(
        color: AppPalate.backgroundColor,
      ));
}
