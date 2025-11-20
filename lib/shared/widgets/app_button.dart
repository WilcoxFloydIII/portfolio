import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final double paddingTop;
  final double paddingLeft;
  final bool circular;
  final bool border;
  const AppButton({
    super.key,
    required this.onPressed,
    required this.circular,
    required this.border,
    required this.paddingTop,
    required this.paddingLeft,
    required this.child,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: widget.paddingTop,
            horizontal: widget.paddingLeft,
          ),
        ),
        shape: WidgetStatePropertyAll(
          widget.circular
              ? CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
        ),
        side: WidgetStateBorderSide.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return BorderSide(width: 1, color: AppColors.borderDefaultHover);
          }
          return BorderSide(width: 1, color: AppColors.borderDefault);
        }),
        foregroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return widget.border
                ? AppColors.textContrast
                : AppColors.textDefaultPrimary;
          } else if (states.contains(WidgetState.hovered)) {
            return widget.border
                ? AppColors.textDefaultPrimary
                : AppColors.textDefaultPrimary;
          }
          return widget.border
              ? AppColors.textDefaultPrimary
              : AppColors.textContrast;
        }),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return widget.border ? AppColors.bgContrast : AppColors.bgDefault;
          } else if (states.contains(WidgetState.hovered)) {
            return AppColors.bgContrastHover;
          }
          return widget.border ? Colors.transparent : AppColors.bgContrast;
        }),
      ),
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class AppButtonAlt extends StatefulWidget {
  final void Function(bool) onHovered;
  final void Function(bool) onPressed;
  final Widget? child;
  final double height;
  final double width;
  final bool border;
  final Color? backColor;
  AppButtonAlt({
    super.key,
    required this.onPressed,
    required this.onHovered,
    required this.border,
    required this.height,
    required this.width,
    required this.child,
    this.backColor,
  });

  @override
  State<AppButtonAlt> createState() => _AppButtonAltState();
}

class _AppButtonAltState extends State<AppButtonAlt> {
  bool hovered = false;
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      enableFeedback: false,
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      onHighlightChanged: (isPressed) {
        setState(() => pressed = isPressed);
        widget.onPressed(isPressed);
      },
      onHover: (isHovered) {
        setState(() => hovered = isHovered);
        widget.onHovered(isHovered);
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1,
            color: widget.backColor != null
                ? AppColors.borderDefaultHover
                : hovered
                ? AppColors.borderDefaultHover
                : AppColors.borderDefault,
          ),
          color: pressed
              ? widget.border
                    ? AppColors.bgContrast
                    : widget.backColor ?? AppColors.bgDefault
              : hovered
              ? widget.backColor ?? AppColors.bgContrastHover
              : widget.border
              ? widget.backColor ?? Colors.transparent
              : widget.backColor ?? AppColors.bgContrast,
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}
