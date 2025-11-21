import 'package:flutter/material.dart';
import '../colors/app_colors.dart';
import '../typography/text_styles.dart';


final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,

  scaffoldBackgroundColor: AppColors.grey900,

  textTheme: const TextTheme(
    headlineMedium: AppTextStyles.headline1,
    bodyMedium: AppTextStyles.body,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.grey300,
      foregroundColor: Colors.black,
    ),
  ),
);
