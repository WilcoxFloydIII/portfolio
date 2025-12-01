import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/models/work_model.dart';

class WorkTile extends StatelessWidget {
  final WorkModel work;
  const WorkTile({super.key, required this.work});

  @override
  Widget build(BuildContext context) {

    String generateProgrammingList(List<String> list) {
      int length = list.length;
      int num = 0;
      String result = '';
      while (num < length) {
        if (num == 0) {
          result += list[num];
        } else {
          result += ' & ${list[num]}';
        }
        num++;
      }
      return result;
    }

    return ResponsiveWidget(
      mobile: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: BoxBorder.fromLTRB(
                  top: BorderSide(width: 1, color: AppColors.borderDefault),
                ),
              ),
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text.rich(
                      TextSpan(
                        text:
                            '${work.startYear}  ${work.endYear != null ? '- ${work.endYear}' : ''}\n\n',
                        style: AppTextStyles.regularMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        children: [
                          TextSpan(
                            text: formatDuration(
                              work.timeRange.start,
                              work.timeRange.end,
                            ),
                            style: AppTextStyles.regularSmall.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      '${work.company} \n\n${work.work} |\n${generateProgrammingList(work.languages)}',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      desktop: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: BoxBorder.fromLTRB(
                  top: BorderSide(width: 1, color: AppColors.borderDefault),
                ),
              ),
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text.rich(
                      TextSpan(
                        text:
                            '${work.startYear}  ${work.endYear != null ? '- ${work.endYear}' : ''}\n\n',
                        style: AppTextStyles.regularMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        children: [
                          TextSpan(
                            text: formatDuration(
                              work.timeRange.start,
                              work.timeRange.end,
                            ),
                            style: AppTextStyles.regularSmall.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 2, child: Text(work.company)),
                  Expanded(
                    flex: 3,
                    child: Text(
                      '${work.work} | ${generateProgrammingList(work.languages)}',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
