import 'package:flutter/material.dart';
class ACircularContainerWithGradient extends StatelessWidget {
  const ACircularContainerWithGradient({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor, 
    this.gradient, 
    this.blurRadius = 40.0, 
    this.margin,
  });

  final double? width, height;
  final Widget? child;
  final double radius, padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Gradient? gradient; 
  final double blurRadius;

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
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: blurRadius,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: child,
    );
  }
}