import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/sizes.dart';
import 'brand_title_text.dart';

class ABrandTitleTextWithVerifyIcon extends StatelessWidget {
  const ABrandTitleTextWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSIze = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor;
  final Color iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSIze;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ABrandTitleText(
            title: title,
            color: textColor,
            maxLine: maxLines,
            textAlign: textAlign,
            brandTextSIze: brandTextSIze,
          ),
        ),
        SizedBox(
          width: ASizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: AColors.primary,
          size: ASizes.iconXs,
        )
      ],
    );
  }
}