import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_text_styles.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/app_text_button.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: rs(context, mobile: 32),
          horizontal: rs(context, mobile: 16, tablet: 47, desktop: 55),
        ),
        child: ResponsiveWidget(
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wilcox Floyd',
                style: AppTextStyles.altSmall.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              AppButton(
                onPressed: () {},
                paddingTop: 8,
                paddingLeft: 8,
                circular: true,
                border: true,
                child: Icon(Icons.menu, size: 18),
              ),
            ],
          ),

          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wilcox Floyd',
                style: AppTextStyles.altSmall.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextButton(onPressed: () {}, text: 'About'),
                  AppTextButton(onPressed: () {}, text: 'Project'),
                  AppTextButton(onPressed: () {}, text: 'Articles'),
                  AppTextButton(onPressed: () {}, text: 'Contacts'),
                ],
              ),

              AppButton(
                onPressed: () {},
                circular: false,
                border: true,
                paddingTop: 2,
                paddingLeft: 2,
                child: Row(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
