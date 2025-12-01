import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final List skills;
  final bool main;
  const SkillWidget({
    super.key,
    required this.title,
    required this.skills,
    required this.main,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.all(32),
            height: 168,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: main ? AppColors.bgContrast : AppColors.bgDefault,
              border: Border.all(
                width: 1,
                color: main ? AppColors.bgDefault : AppColors.borderDefault,
              ),
            ),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.altSmall.copyWith(
                    color: main
                        ? AppColors.textContrast
                        : AppColors.textDefaultPrimary,
                  ),
                ),
                Wrap(
                  children: List.generate(skills.length, (index) {
                    return Text(
                      index != skills.length - 1
                          ? '${skills[index]} / '
                          : skills[index],
                      style: AppTextStyles.regularSmall.copyWith(
                        color: main
                            ? AppColors.textContrast
                            : AppColors.textDefaultPrimary,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
