import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../typography/text_styles.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: AppColors.primary,


  bottomAppBarTheme: const BottomAppBarThemeData(
    
    color: AppColors.primary,
    elevation: 2,
  ),

  scaffoldBackgroundColor: AppColors.background,

  textTheme: const TextTheme(
    headlineMedium: AppTextStyles.headline1,
    bodyMedium: AppTextStyles.body,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      minimumSize: Size(double.infinity, 48),
    ),
  ),
);
