import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';

class AppTextButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  const AppTextButton({super.key, required this.onPressed, required this.text});

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return AppColors.textContrast;
          } else if (states.contains(WidgetState.hovered)) {
            return AppColors.textDefaultPrimaryHover;
          }
          return AppColors.textDefaultPrimary;
        }),
        textStyle: WidgetStatePropertyAll(
          AppTextStyles.regularMedium.copyWith(
            fontWeight: FontWeight.w200,
            color: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return AppColors.textContrast;
              } else if (states.contains(WidgetState.hovered)) {
                return AppColors.textDefaultPrimaryHover;
              }
              return AppColors.textDefaultPrimary;
            }),
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
