import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/models/project_model.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/github_button.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/project_language_widget.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel project;
  final int index;
  const ProjectWidget({super.key, required this.project, required this.index});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Column(
        children: [
          Text(project.name),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(project.languages.length, (index) {
              return ProjectLanguageWidget(lang: project.languages[index]);
            }),
          ),
          Text(project.description, style: AppTextStyles.regularSmall),
          GithubButton(),
        ],
      ),

      desktop: index == 0 || index % 2 == 0
          ? Row(
              spacing: 71,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project.name),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(project.languages.length, (
                          index,
                        ) {
                          return ProjectLanguageWidget(
                            lang: project.languages[index],
                          );
                        }),
                      ),
                      Text(
                        project.description,
                        style: AppTextStyles.regularSmall,
                      ),
                      GithubButton(),
                    ],
                  ),
                ),

                Expanded(flex: 5, child: Row()),
              ],
            )
          : Row(
              spacing: 71,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 5, child: Row()),

                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project.name),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(project.languages.length, (
                          index,
                        ) {
                          return ProjectLanguageWidget(
                            lang: project.languages[index],
                          );
                        }),
                      ),
                      Text(
                        project.description,
                        style: AppTextStyles.regularSmall,
                      ),
                      GithubButton(),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
