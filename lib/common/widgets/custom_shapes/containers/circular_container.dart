import 'package:flutter/material.dart';

import '/utilities/constants/colors.dart';

class ACircularContainer extends StatelessWidget {
  const ACircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = AColors.white,
     this.margin,
  });

  final double? width, height;
  final Widget? child;
  final double radius, padding;
  final EdgeInsets ? margin;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
