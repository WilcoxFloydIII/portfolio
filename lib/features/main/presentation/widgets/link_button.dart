import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class LinkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final PhosphorIconData icon;
  final String name;
  const LinkButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: onPressed,
      circular: false,
      border: true,
      paddingTop: 16,
      paddingLeft: 32,
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          Text(
            name,
            style: AppTextStyles.regularSmall.copyWith(
              fontStyle: FontStyle.italic,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
