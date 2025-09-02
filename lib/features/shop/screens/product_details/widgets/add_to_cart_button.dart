import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/icons/circular_container_icon.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class AAddToCartButton extends StatelessWidget {
  const AAddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ASizes.defaultSpace, vertical: ASizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: darkMode ? AColors.darkGrey : AColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ASizes.cardRadiusLg),
          topRight: Radius.circular(ASizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ACircularContainerIcon(
                icon: Iconsax.minus,
                backgroundColor: AColors.darkerGrey,
                width: 40,
                height: 40,
                color: AColors.white,
              ),
              SizedBox(
                width: ASizes.spaceBtwItems,
              ),
              Text(
                '7',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: ASizes.spaceBtwItems,
              ),
              ACircularContainerIcon(
                icon: Iconsax.add,
                backgroundColor: AColors.black,
                width: 40,
                height: 40,
                color: AColors.white,
              ),
              
            ],
          ),
          ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(ASizes.md),
                    backgroundColor: AColors.black,
                    side: BorderSide(color: AColors.black)),
                onPressed: () {},
                child: Text('Add to Cart'),
              ),
        ],
      ),
    );
  }
}
