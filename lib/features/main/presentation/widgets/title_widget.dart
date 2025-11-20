import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/app_button_pair_1.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  String title1 = 'Front-end';
  String title2 = 'Developer';
  String text =
      "My goal is to write maintainable, clean\nand understandable code to process\ndevelopment was enjoyable.";
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
                title1,
                style: AppTextStyles.altXLarge.copyWith(fontSize: 48),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title2,
                style: AppTextStyles.altXLarge.copyWith(fontSize: 48),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          AppButtonPair1(
            onPressed: () {},
            text: 'Projects',
            height: 56,
            width: 184,
            fontSize: 16,
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
                title1,
                style: AppTextStyles.altXLarge.copyWith(fontSize: 96),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title2,
                style: AppTextStyles.altXLarge.copyWith(fontSize: 96),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              AppButtonPair1(
                onPressed: () {},
                text: 'Projects',
                height: 56,
                width: 184,
                fontSize: 16,
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
              Text(title1, style: AppTextStyles.altXLarge),
              AppButtonPair1(
                onPressed: () {},
                text: 'Projects',
                height: 56,
                width: 184,
                fontSize: 16,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppTextStyles.regularSmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(title2, style: AppTextStyles.altXLarge),
            ],
          ),
        ],
      ),
    );
  }
}
