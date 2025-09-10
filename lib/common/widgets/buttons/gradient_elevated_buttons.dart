import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';

class AGradientElevatedButton extends StatelessWidget {
  const AGradientElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 56.0,
    this.borderRadius = 12.0,
    this.fontSize = 18.0,
  });

  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // Remove padding so the child Ink widget fills the button.
          padding: EdgeInsets.zero,
          // Set the shape of the button to have rounded corners.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          // Set elevation for a subtle shadow.
          elevation: 5,
          shadowColor: AColors.primary.withOpacity(0.5),
        ),
        child: Ink(
          decoration: BoxDecoration(
            // The gradient is applied to the Ink widget's decoration.
            gradient: const LinearGradient(
              colors: [
                AColors.primary,
                AColors.secondary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            // The border radius must match the button's shape.
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          // The Container is used for alignment and sizing of the text.
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
