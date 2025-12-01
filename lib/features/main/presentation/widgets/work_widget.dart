import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/providers/user_provider.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/work_tile.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('Work', style: AppTextStyles.altMedium),
        Column(
          children: List.generate(Floyd.works.length, (index) {
            final work = Floyd.works[index];
            return WorkTile(work: work);
          }),
        ),
        SizedBox(height: 32),
        Text.rich(
          TextSpan(
            text: 'Work experience \n',
            style: AppTextStyles.regularSmall.copyWith(
              color: AppColors.textSecondary,
            ),
            children: [
              TextSpan(
                text: formatDuration(
                  Floyd.workExperience.start,
                  DateTime.now(),
                ),
                style: AppTextStyles.regularSmall.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
