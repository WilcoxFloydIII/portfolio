import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/models/article_model.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/app_button_pair_1.dart';

// ignore: must_be_immutable
class ArticleWidget extends StatefulWidget {
  final ArticleModel article;
  late int index;
  late int currentIndex;
  ArticleWidget({
    super.key,
    required this.article,
    required this.index,
    required this.currentIndex,
  });

  @override
  State<ArticleWidget> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    bool isActive = widget.index == widget.currentIndex;
    bool isLeftSide = !isActive && widget.index < widget.currentIndex;
    // Slide direction logic
    final double slideOffset = isActive ? 0 : (isLeftSide ? 0 : 200);
    return ResponsiveWidget(
      mobile: Container(),
      tablet: Container(),
      desktop: Container(
        height: 276,
        width: 630,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            width: isActive ? 0 : 1,
            color: AppColors.borderDefault,
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
              left: isActive ? 0 : slideOffset,
              right: isActive ? 0 : -slideOffset,
              child: _TextPanel(isActive: isActive, article: widget.article),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _TextPanel extends StatelessWidget {
  final bool isActive;
  final ArticleModel article;

  _TextPanel({required this.isActive, required this.article});

  bool pressed1 = false;
  bool pressed2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 276,
      padding: EdgeInsets.all(32),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(article.title),
          Text(article.text),
          SizedBox(height: 16),
          Row(
            children: [
              AppButtonPair1(
                onPressed: () {},
                text: 'Read More',
                height: 40,
                width: 132,
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
