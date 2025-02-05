import 'package:flutter/material.dart';
import 'package:flutter_task_project/constants/colors.dart';


class CustomTextTheme {
  CustomTextTheme._();


  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.textPrimary),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.textSecondary),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.textPrimary),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.textSecondary),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.textSecondary),
  );


  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.light),
    headlineMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.bold, color: AppColors.light),
    headlineSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.light),

    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.light),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.light),
    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.light),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.light),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.light),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.light.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.light),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.light.withOpacity(0.5)),
  );
}
