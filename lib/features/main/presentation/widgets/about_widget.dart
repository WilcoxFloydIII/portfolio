import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/providers/user_provider.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/github_button.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/skill_widget.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  String title = '.../About me';
  String subtitile = Floyd.about;
  String devOpsText =
      'Some of my favorite technologies, topics, or tools that I worked with';
  List frontEnd = Floyd.frontEnd;

  List styles = Floyd.styles;
  List backEnd = Floyd.backEnd;
  List devOps = Floyd.devOps;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.altSmall),
          Text(
            subtitile,
            style: AppTextStyles.regularSmall.copyWith(height: 1.5),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 424,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColors.borderDefault,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          SkillWidget(title: 'Front-End', skills: frontEnd, main: true),
          Row(
            children: [
              Expanded(
                child: SkillWidget(
                  title: 'Styles',
                  skills: styles,
                  main: false,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GithubButton()],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 51,
            children: [
              Expanded(
                flex: 3,
                child: Text(devOpsText, style: AppTextStyles.regularSmall),
              ),
              Expanded(
                flex: 7,
                child: SkillWidget(
                  title: 'Dev-Ops',
                  skills: devOps,
                  main: false,
                ),
              ),
            ],
          ),
        ],
      ),

      tablet: Column(
        spacing: 16,
        children: [
          Row(
            children: [
              Expanded(child: Text(title, style: AppTextStyles.altSmall)),
              Expanded(
                child: Text(
                  subtitile,
                  style: AppTextStyles.regularSmall.copyWith(height: 1.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          Container(
            height: 424,
            width: 488,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.borderDefault,
            ),
          ),
          SizedBox(height: 32),
          SkillWidget(title: 'Front-End', skills: frontEnd, main: true),
          Row(
            children: [
              Expanded(
                child: SkillWidget(
                  title: 'Styles',
                  skills: styles,
                  main: false,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GithubButton()],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 51,
            children: [
              Expanded(
                child: Text(devOpsText, style: AppTextStyles.regularSmall),
              ),
              Expanded(
                child: SkillWidget(
                  title: 'Dev Ops',
                  skills: devOps,
                  main: false,
                ),
              ),
            ],
          ),
        ],
      ),

      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 700,
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.altSmall),
                  SizedBox(height: 16),
                  SkillWidget(title: 'Front-End', skills: frontEnd, main: true),
                  Row(
                    children: [
                      Expanded(
                        child: SkillWidget(
                          title: 'Styles',
                          skills: styles,
                          main: false,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [GithubButton()],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 51,
                    children: [
                      Expanded(
                        child: Text(
                          devOpsText,
                          style: AppTextStyles.regularSmall,
                        ),
                      ),
                      Expanded(
                        child: SkillWidget(
                          title: 'Dev Ops',
                          skills: devOps,
                          main: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Column(
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
                    color: AppColors.borderDefault,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
