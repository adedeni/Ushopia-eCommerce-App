import 'package:flutter/material.dart';

import '../../../../../utilities/constants/colors.dart';


class OnboardingNextButtonWithGradient extends StatelessWidget {
  const OnboardingNextButtonWithGradient({
    super.key,
    required this.onPressed,
    required this.icon,
    this.size = 56.0,
  });

  final VoidCallback onPressed;
  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // Remove padding so the child Ink widget fills the button.
          padding: EdgeInsets.zero,
          // Set the shape of the button to be a circle.
          shape: const CircleBorder(),
          // Set elevation for a subtle shadow.
          elevation: 5,
          shadowColor: AColors.primary.withOpacity(0.5),
        ),
        child: Ink(
          decoration: const BoxDecoration(
            // The gradient is applied to the Ink widget's decoration.
            gradient: LinearGradient(
              colors: [
                AColors.primary,
                AColors.secondary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            // The shape must match the button's shape.
            shape: BoxShape.circle,
          ),
          // The Center widget is used for aligning the icon.
          child: Center(child: icon),
        ),
      ),
    );
  }
}