import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';


class AGradientFloatingActionButton extends StatelessWidget {
  const AGradientFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius = 28, // Default to a circular radius
    this.shape = const CircleBorder(),
  });

  final VoidCallback onPressed;
  final Widget child;
  final double borderRadius;
  final OutlinedBorder shape;

  @override
  Widget build(BuildContext context) {
    return Material(
      // The material widget gives the button its elevation and shadow.
      elevation: 6.0,
      shape: shape, // Shape is circular by default but can be change to the following shapes, RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),) //StadiumBorder(), //BeveledRectangleBorder() //ContinuousRectangleBorder()
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        // The splash color when the button is tapped.
        splashColor: Colors.white.withOpacity(0.3),
        child: Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            borderRadius: shape is RoundedRectangleBorder ? BorderRadius.circular(borderRadius) : null,
            shape: shape is CircleBorder ? BoxShape.circle : BoxShape.rectangle,
            gradient: const LinearGradient(
              colors: [
                AColors.primary,
                AColors.secondary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}