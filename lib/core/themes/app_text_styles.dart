import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const String _fontFamily = 'Fira_Code';
  static const String _fontFamilyAlt = 'Outfit';

  /// Large "Full-stack" headline
  static TextStyle headlineLarge(BuildContext context) => TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.2,
    height: 1.1,
    fontSize: ResponsiveValue<double>(
      context,
      defaultValue: 72,
      conditionalValues: [
        Condition.smallerThan(name: TABLET, value: 42),
        Condition.equals(name: TABLET, value: 56),
        Condition.largerThan(name: DESKTOP, value: 84),
      ],
    ).value,
  );

  /// "Developer" main title
  static TextStyle headlineMedium(BuildContext context) => TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.0,
    height: 1.05,
    fontSize: ResponsiveValue<double>(
      context,
      defaultValue: 64,
      conditionalValues: [
        Condition.smallerThan(name: TABLET, value: 38),
        Condition.equals(name: TABLET, value: 52),
        Condition.largerThan(name: DESKTOP, value: 76),
      ],
    ).value,
  );

  /// Subtitle text: “My goal is to write maintainable, clean…”
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontFamily: _fontFamilyAlt,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: Colors.white.withOpacity(0.85),
    fontSize: ResponsiveValue<double>(
      context,
      defaultValue: 18,
      conditionalValues: [
        Condition.smallerThan(name: TABLET, value: 14),
        Condition.equals(name: TABLET, value: 16),
        Condition.largerThan(name: DESKTOP, value: 20),
      ],
    ).value,
  );

  /// Small labels / button text like “Projects”, “Read more”, “Github”
  static TextStyle labelMedium(BuildContext context) => TextStyle(
    fontFamily: _fontFamilyAlt,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.6,
    height: 1.2,
    color: Colors.white,
    fontSize: ResponsiveValue<double>(
      context,
      defaultValue: 14,
      conditionalValues: [
        Condition.smallerThan(name: TABLET, value: 12),
        Condition.equals(name: TABLET, value: 13),
        Condition.largerThan(name: DESKTOP, value: 15),
      ],
    ).value,
  );

  /// Smaller footer / tech stack text (e.g. “TypeScript / React / Vue…”)
  static TextStyle caption(BuildContext context) => TextStyle(
    fontFamily: _fontFamilyAlt,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.3,
    color: Colors.white.withOpacity(0.75),
    fontSize: ResponsiveValue<double>(
      context,
      defaultValue: 13,
      conditionalValues: [
        Condition.smallerThan(name: TABLET, value: 11),
        Condition.equals(name: TABLET, value: 12),
        Condition.largerThan(name: DESKTOP, value: 14),
      ],
    ).value,
  );
}
