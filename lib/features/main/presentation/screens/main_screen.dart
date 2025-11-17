import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/app_bar.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/links_widget.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/title_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppNavBar(),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: rs(context, mobile: 64),
          horizontal: rs(context, mobile: 15, tablet: 47, desktop: 55),
        ),
        child: ListView(
          children: [TitleWidget(), SizedBox(height: 64), LinksWidget()],
        ),
      ),
    );
  }
}
