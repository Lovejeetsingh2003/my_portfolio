import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  FrostedContainer({
    super.key,
    required this.height,
    required this.width,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: SizedBox(height: height, width: width),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.50),
                    Colors.white.withOpacity(0.3),
                  ],
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
