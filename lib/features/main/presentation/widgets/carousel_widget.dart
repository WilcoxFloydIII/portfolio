// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/themes/app_colors.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/models/article_model.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/article_widget.dart';
import 'package:portfolio_web_app/shared/widgets/app_button.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController _controller = PageController(viewportFraction: 0.5);
  int _currentPage = 0;
  bool nextPressed = false;
  bool previousPressed = false;
  final List<ArticleModel> articles = [
    ArticleModel(title: '', text: '', link: '', image: ''),
    ArticleModel(title: '', text: '', link: '', image: ''),
    ArticleModel(title: '', text: '', link: '', image: ''),
    ArticleModel(title: '', text: '', link: '', image: ''),
    ArticleModel(title: '', text: '', link: '', image: ''),
    ArticleModel(title: '', text: '', link: '', image: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Stack(alignment: AlignmentGeometry.center, children: [
      
    ],),
      tablet: Stack(alignment: AlignmentGeometry.center, children: [
      
    ],),
      desktop: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          SizedBox(
            height: 276,
            child: PageView.builder(
              controller: _controller,
              physics: NeverScrollableScrollPhysics(),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final bool active = index == _currentPage;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  curve: Curves.easeOut,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: active ? 1 : 0.8,
                    child: ArticleWidget(
                      article: articles[index],
                      index: index,
                      currentIndex: _currentPage,
                    ),
                  ),
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButtonAlt(
                onPressed: (isHovered) {
                  setState(() {
                    previousPressed = isHovered;
                  });
                  if (_currentPage > 0) {
                    _currentPage--;
                    _controller.previousPage(
                      duration: Duration(microseconds: 350),
                      curve: Curves.easeOut,
                    );
                    setState(() {});
                  }
                },
                onHovered: (isHovered) {},
                border: true,
                height: 56,
                width: 56,
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: previousPressed
                      ? AppColors.bgDefault
                      : AppColors.bgContrast,
                ),
              ),
              AppButtonAlt(
                onPressed: (isHovered) {
                  setState(() {
                    nextPressed = isHovered;
                  });
                  if (_currentPage < articles.length - 1) {
                    _currentPage++;
                    _controller.nextPage(
                      duration: Duration(microseconds: 350),
                      curve: Curves.easeInOut,
                    );
                    setState(() {});
                  }
                },
                onHovered: (isHovered) {},
                border: true,
                height: 56,
                width: 56,
                child: Icon(
                  Icons.arrow_forward,
                  size: 24,
                  color: nextPressed
                      ? AppColors.bgDefault
                      : AppColors.bgContrast,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
