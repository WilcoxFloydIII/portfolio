import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 5,
              child: Text('.../Projects...', style: AppTextStyles.altSmall),
            ),
          ],
        ),
        
      ],
    );
  }
}
