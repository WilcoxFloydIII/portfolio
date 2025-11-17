import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Full-stack',
                style: AppTextStyles.altXLarge.copyWith(fontSize: 48),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Developer',
                style: AppTextStyles.altXLarge.copyWith(fontSize: 48),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My goal is to write maintainable, clean\nand understandable code to process\ndevelopment was enjoyable.",
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            spacing: 8,
            children: [
              AppButtonAlt(
                onPressed: () {
                  null;
                },
                circular: false,
                border: false,
                height: 56,
                width: 184,
                child: Text(
                  'Projects',
                  style: AppTextStyles.regularMediumItalic.copyWith(
                    color: AppColors.textContrast,
                  ),
                ),
              ),

              AppButtonAlt(
                onPressed: () {},
                circular: true,
                border: false,
                height: 56,
                width: 56,
                child: Icon(Icons.arrow_forward, color: AppColors.textContrast),
              ),
            ],
          ),
        ],
      ),

      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Full-stack',
                style: AppTextStyles.altXLarge.copyWith(fontSize: 96),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Developer',
                style: AppTextStyles.altXLarge.copyWith(fontSize: 96),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My goal is to write maintainable, clean\nand understandable code to process\ndevelopment was enjoyable.",
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Row(
                spacing: 8,
                children: [
                  AppButtonAlt(
                    onPressed: () {
                      null;
                    },
                    circular: false,
                    border: false,
                    height: 56,
                    width: 184,
                    child: Text(
                      'Projects',
                      style: AppTextStyles.regularMediumItalic.copyWith(
                        color: AppColors.textContrast,
                      ),
                    ),
                  ),

                  AppButtonAlt(
                    onPressed: () {},
                    circular: true,
                    border: false,
                    height: 56,
                    width: 56,
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.textContrast,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      desktop: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Full-stack', style: AppTextStyles.altXLarge),
              Row(
                spacing: 8,
                children: [
                  AppButtonAlt(
                    onPressed: () {
                      null;
                    },
                    circular: false,
                    border: false,
                    height: 56,
                    width: 184,
                    child: Text(
                      'Projects',
                      style: AppTextStyles.regularMediumItalic.copyWith(
                        color: AppColors.textContrast,
                      ),
                    ),
                  ),

                  AppButtonAlt(
                    onPressed: () {},
                    circular: true,
                    border: false,
                    height: 56,
                    width: 56,
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.textContrast,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My goal is to write maintainable, clean\nand understandable code to process\ndevelopment was enjoyable.",
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text('Developer', style: AppTextStyles.altXLarge),
            ],
          ),
        ],
      ),
    );
  }
}
