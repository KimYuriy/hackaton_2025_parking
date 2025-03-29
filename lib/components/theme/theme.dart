import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
      surface: AppColors.grey,
      primary: AppColors.beige,
      secondary: AppColors.plum,
      tertiary: AppColors.charcoal,
      scrim: AppColors.black
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme.dark(
      surface: AppColors.charcoal,
      primary: AppColors.plum,
      secondary: AppColors.beige,
      tertiary: AppColors.grey,
      scrim: AppColors.cream
  ),
);