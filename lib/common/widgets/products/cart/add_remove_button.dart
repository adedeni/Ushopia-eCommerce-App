import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '../../icons/circular_container_icon.dart';

class AProductAddRemoveWithQuantity extends StatelessWidget {
  const AProductAddRemoveWithQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 70,
        ),

        ///Add and Remove Buttons
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ACircularContainerIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: ASizes.md,
              color: darkMode ? AColors.white : AColors.black,
              backgroundColor: darkMode ? AColors.darkGrey : AColors.light,
            ),
            SizedBox(
              width: ASizes.spaceBtwItems,
            ),
            Text(
              '100',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              width: ASizes.spaceBtwItems,
            ),
            ACircularContainerIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: ASizes.md,
              color: AColors.white,
              backgroundColor: AColors.primary,
            ),
          ],
        )
      ],
    );
  }
}
