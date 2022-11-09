import 'package:conception_i_tech/core/configs/app_colors.dart';
import 'package:conception_i_tech/core/configs/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    splashColor: Colors.transparent,
    primaryColor: AppColors.primay,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppStyle.hintText,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: .5),
        borderRadius: BorderRadius.circular(16),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: .5),
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: .5),
        borderRadius: BorderRadius.circular(16),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: .5),
        borderRadius: BorderRadius.circular(16),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.secondary, width: .5),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}
