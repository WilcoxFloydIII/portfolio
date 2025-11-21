import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class GithubButton extends StatefulWidget {
  const GithubButton({super.key});

  @override
  State<GithubButton> createState() => _GithubButtonState();
}

class _GithubButtonState extends State<GithubButton> {
  bool pressed = false;
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppButtonAlt(
          onPressed: (onPressed) {
            setState(() => pressed = onPressed);
          },
          onHovered: (onHovered) {
            setState(() => hovered = onHovered);
          },
          border: true,
          backColor: pressed
              ? AppColors.bgContrast
              : hovered
              ? AppColors.bgContrastHover
              : AppColors.bgDefault,
          height: 56,
          width: 56,
          child: Icon(
            PhosphorIcons.githubLogo(),
            size: 24,
            color: pressed
                ? AppColors.bgDefault
                : hovered
                ? AppColors.bgContrastHover
                : AppColors.bgContrast,
          ),
        ),
        Positioned(
          left: 32,
          child: AppButtonAlt(
            onPressed: (onPressed) {
              setState(() => pressed = onPressed);
            },
            onHovered: (onHovered) {
              setState(() => hovered = onHovered);
            },
            border: false,
            backColor: pressed
                ? AppColors.bgDefault
                : hovered
                ? AppColors.bgContrastHover
                : AppColors.bgContrast,
            height: 56,
            width: 56,
            child: Icon(
              PhosphorIcons.arrowElbowRightUp(),
              size: 24,
              color: pressed
                  ? AppColors.bgContrast
                  : hovered
                  ? AppColors.bgContrastHover
                  : AppColors.bgDefault,
            ),
          ),
        ),
      ],
    );
  }
}
