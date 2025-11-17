import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'app_colors.dart';

class AppTheme {
  static const String _fontFamily = 'Outfit';
  // ignore: unused_field
  static const String _fontFamilyAlt = 'Fira_Code';

  static ThemeData get lightTheme {
    final baseTheme = ThemeData.light(useMaterial3: true);

    return baseTheme.copyWith(
      // Color scheme
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.bgDefault,
      primaryColor: AppColors.textDefaultPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.bgTransparent,
        foregroundColor: AppColors.textDefaultPrimary,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: _fontFamily,
          fontSize: 20, // Use responsive scaler if needed
          fontWeight: FontWeight.bold,
          color: AppColors.textDefaultPrimary,
        ),
      ),
      
      iconTheme: IconThemeData(color: AppColors.textDefaultPrimary),
      dividerColor: AppColors.borderDefault,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.bgTransparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderDefault),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final baseTheme = ThemeData.dark(useMaterial3: true);

    return baseTheme.copyWith(
      
      // Color scheme
      
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.bgDefault,
      primaryColor: AppColors.textDefaultPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.bgTransparent,
        foregroundColor: AppColors.textDefaultPrimary,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: _fontFamily,
          fontSize: 20, // Use responsive scaler if needed
          fontWeight: FontWeight.bold,
          color: AppColors.textDefaultPrimary,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.textDefaultPrimary),
      dividerColor: AppColors.borderDefault,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.bgTransparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderDefault),
        ),
      ),

      textTheme: TextTheme(
        bodyMedium: AppTextStyles.regularMedium,
        bodySmall: AppTextStyles.regularSmall,
        bodyLarge: AppTextStyles.regularLarge,
        titleLarge: AppTextStyles.altLarge,
        titleMedium: AppTextStyles.altMedium,
        titleSmall: AppTextStyles.altSmall,
      ),
    );
  }

  // You can add other themes like darkTheme here
  // static ThemeData get darkTheme { ... }
}
