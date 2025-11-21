import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/skill_widget.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  String title = '.../About me';
  String subtitile =
      'Hello! I`m Floyd, a front-end developer.\nI have 3 years of experience';
  List frontEnd = ['HTML', 'Flutter Mobile', 'Flutter Web'];

  List styles = ['CSS', 'Tailwind CSS', 'Material UI'];
  List backEnd = [];
  List devOps = [];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Row(),
      tablet: Row(),
      desktop: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.altSmall),
                SizedBox(height: 16),
                SkillWidget(title: 'Front-End', skills: frontEnd, main: true),
                Row(
                  children: [
                    SkillWidget(title: 'Styles', skills: styles, main: false),
                    Expanded(child: Center()),
                  ],
                ),
              ],
            ),
        
            Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  subtitile,
                  style: AppTextStyles.regularSmall.copyWith(height: 1.5),
                ),
                SizedBox(height: 16),
                Container(
                  height: 536,
                  width: 408,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
