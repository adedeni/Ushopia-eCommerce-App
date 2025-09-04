import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class AGridListItems extends StatelessWidget {
  const AGridListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 2,
      shrinkWrap: true,
      separatorBuilder: (_, _) => SizedBox(height:ASizes.spaceBtwItems ,),
      itemBuilder: (_, index) => ARoundedContainer(
        padding: EdgeInsets.all(ASizes.md),
        showBorder: true,
        backgroundColor: darkMode ? AColors.dark : AColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row 1
            Row(
              children: [
                ///Icon
                Icon(Iconsax.ship),
                SizedBox(width: ASizes.spaceBtwItems / 2),
      
                ///Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Failed',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: AColors.error,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        '14, Aug, 2025',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: ASizes.iconSm),
                ),
              ],
            ),
            SizedBox(height: ASizes.spaceBtwItems),
      
            ///Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: ASizes.spaceBtwItems / 2),
      
                      ///Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '#2RT77',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ///Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: ASizes.spaceBtwItems / 2),
      
                      ///Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '14, Aug, 2025',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
