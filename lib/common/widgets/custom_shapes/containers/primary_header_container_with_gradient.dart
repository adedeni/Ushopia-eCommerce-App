import 'package:flutter/material.dart';
import '/utilities/constants/colors.dart';
import '../curve_edges/curve_edges_widget.dart';
import 'circular_container_with_gradient.dart';

class APrimaryHeaderContainerWithGradient extends StatelessWidget {
  const APrimaryHeaderContainerWithGradient({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACurveEdgesWidget(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AColors.primary,
              AColors.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            // Background Custom Shapes with Radial Gradient and Blur
            Positioned(
              top: -150,
              right: -250,
              child: ACircularContainerWithGradient(
                gradient: RadialGradient(
                  colors: [
                    AColors.textWhite.withOpacity(0.3),
                    AColors.textWhite.withOpacity(0.0),
                  ],
                ),
                blurRadius: 100.0, // Adjust the blur radius for a softer glow
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ACircularContainerWithGradient(
                gradient: RadialGradient(
                  colors: [
                    AColors.textWhite.withOpacity(0.3),
                    AColors.textWhite.withOpacity(0.0),
                  ],
                ),
                blurRadius: 100.0,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}