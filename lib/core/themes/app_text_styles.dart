import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';

class AppTextStyles {
  static const String _fontFamily = 'Outfit';
  static const String _fontFamilyAlt = 'Fira Code';

  static const TextStyle regularSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    height: 1.2,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle regularMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    height: 1.2,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle regularMediumItalic = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    fontStyle: FontStyle.italic,
    height: 1.2,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle regularLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    height: 1.5,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle regularLargeItalic = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamily,
    fontStyle: FontStyle.italic,
    height: 1.5,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle altRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _fontFamilyAlt,
    height: 1.5,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle altXLarge = TextStyle(
    fontSize: 128,
    fontFamily: _fontFamilyAlt,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle altLarge = TextStyle(
    fontSize: 96,
    fontFamily: _fontFamilyAlt,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle altMedium = TextStyle(
    fontSize: 48,
    fontFamily: _fontFamilyAlt,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.textDefaultPrimary,
  );

  static const TextStyle altSmall = TextStyle(
    fontSize: 24,
    fontFamily: _fontFamilyAlt,
    height: 1.2,
    fontWeight: FontWeight.w700,
    color: AppColors.textDefaultPrimary,
  );
}
