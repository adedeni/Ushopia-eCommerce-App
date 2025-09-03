import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class ASingleAddress extends StatelessWidget {
  const ASingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      padding: EdgeInsets.all(ASizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : darkMode
              ? AColors.darkGrey
              : AColors.grey,
      margin: EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? darkMode
                      ? AColors.light.withOpacity(0.7)
                      : AColors.dark.withOpacity(0.7)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adedeni Adeshina',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: ASizes.sm / 2,
              ),
              Text(
                '+234(0)9036176161',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: ASizes.sm / 2,
              ),
             Text(
                '47 Secretariats-Garage, Ibadan City, Oyo, Nigeria',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              SizedBox(
                height: ASizes.sm / 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
