import 'package:flutter/material.dart';

class SharedBackgroundImage extends StatelessWidget {
  final String imagePath;
  final Widget child;

  const SharedBackgroundImage({
    super.key,
    required this.imagePath,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Full background image (but hidden outside containers)
        Positioned.fill(child: Image.asset(imagePath, fit: BoxFit.cover)),

        /// Foreground with containers that reveal slices of the image
        child,
      ],
    );
  }
}

class SharedBackgroundSlice extends StatelessWidget {
  final String imagePath;
  final Alignment alignment;
  final double width;
  final double height;

  const SharedBackgroundSlice({
    super.key,
    required this.imagePath,
    required this.alignment,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.none,
            alignment: alignment,
          ),
        ),
      ),
    );
  }
}
