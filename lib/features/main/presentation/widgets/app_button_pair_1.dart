import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class AppButtonPair1 extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double width;
  final double fontSize;
  const AppButtonPair1({
    super.key,
    required this.onPressed,
    required this.text,
    required this.height,
    required this.width,
    required this.fontSize,
  });

  @override
  State<AppButtonPair1> createState() => _AppButtonPair1State();
}

class _AppButtonPair1State extends State<AppButtonPair1> {
  bool pressed = false;
  bool hovered = false;
  Color backColor = AppColors.bgContrast;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        AppButtonAlt(
          onPressed: (isPressed) {
            setState(() => pressed = isPressed);
            widget.onPressed;
          },
          onHovered: (isHovered) {
            setState(() => hovered = isHovered);
          },
          backColor: pressed
              ? AppColors.bgDefault
              : hovered
              ? AppColors.bgContrastHover
              : AppColors.bgContrast,
          border: false,
          height: widget.height,
          width: widget.width,
          child: Text(
            widget.text,
            style: AppTextStyles.regularMediumItalic.copyWith(
              color: pressed
                  ? AppColors.textDefaultPrimary
                  : AppColors.textContrast,
              fontSize: widget.fontSize,
            ),
          ),
        ),

        AppButtonAlt(
          onPressed: (isPressed) {
            setState(() => pressed = isPressed);
            widget.onPressed;
          },
          onHovered: (isHovered) {
            setState(() => hovered = isHovered);
          },
          backColor: pressed
              ? AppColors.bgDefault
              : hovered
              ? AppColors.bgContrastHover
              : AppColors.bgContrast,
          border: false,
          height: widget.height,
          width: widget.height,
          child: Icon(
            Icons.arrow_forward,
            color: pressed
                ? AppColors.textDefaultPrimary
                : AppColors.textContrast,
          ),
        ),
      ],
    );
  }
}
