import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/device/device_utility.dart';
import '../../../../utilities/helpers/helper_functions.dart';

class ASearchContainer extends StatelessWidget {
  const ASearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
      child: Container(
        width: ADeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ASizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? darkMode
                  ? AColors.dark
                  : AColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(ASizes.cardRadiusLg),
          border: showBorder ? Border.all(color: AColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AColors.darkerGrey,
            ),
            const SizedBox(
              width: ASizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(color: AColors.darkGrey), //Find a fix to this color
            )
          ],
        ),
      ),
    );
  }
}
