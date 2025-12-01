import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';

class ProjectLanguageWidget extends StatelessWidget {
  final String lang;
  const ProjectLanguageWidget({super.key, required this.lang});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.borderDefault),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(child: Text(lang)),
      ),
    );
  }
}
