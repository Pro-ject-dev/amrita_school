import 'package:amrita_vidhyalayam_teacher/core/theme/typography/text_styles.dart';
import 'package:flutter/material.dart';
import '../colors/app_colors.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,

  scaffoldBackgroundColor: AppColors.background,

  textTheme: const TextTheme(
    headlineMedium: AppTextStyles.headline1,
    bodyMedium: AppTextStyles.body,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 48),
    ),
  ),
);
