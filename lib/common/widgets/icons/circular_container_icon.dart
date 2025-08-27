import 'package:flutter/material.dart';
import '/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class ACircularContainerIcon extends StatelessWidget {
  ///A custom Circular Icon Widget with a background color

  ///Properties are:
  ///Container [width], [height], and [backgroundColor]

  ///Icon's [size], [color] and [onPressed]

  const ACircularContainerIcon({
    super.key,
    this.width,
    this.height,
    this.size = ASizes.lg,
    this.color,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
   
  });

  final double? width, height, size;
  final Color? color, backgroundColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : darkMode
                ? AColors.black.withOpacity(0.9)
                : AColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
