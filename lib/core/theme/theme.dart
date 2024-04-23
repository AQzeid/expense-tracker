import 'package:expense_tracker/core/theme/app_palatte.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPalate.lightTextColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      );
  static final whiteThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPalate.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPalate.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: _border(),
      focusedBorder: _border(AppPalate.gradient3),
    ),
  );
}
