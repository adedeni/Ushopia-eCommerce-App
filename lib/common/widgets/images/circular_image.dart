import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';

class ACircularImage extends StatelessWidget {
  const ACircularImage({
    super.key,
     this.fit = BoxFit.cover,
    required this.image,
     this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
     this.width = 56,
     this.height = 56,
     this.padding = ASizes.sm,
  });

  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        //If image background color is null then switch it to light and dark mode color design
        color: backgroundColor ?? (darkMode ? AColors.black : AColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) :  AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
