import 'package:flutter/material.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';

class ARoundedContainer extends StatelessWidget {
  const ARoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = ASizes.cardRadiusLg,
      this.borderColor = AColors.borderPrimary,
      this.backgroundColor = AColors.white,
      this.padding,
      this.margin,
      this.showBorder = false,
      this.child});

  final double? width, height;
  final double radius;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final bool showBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
