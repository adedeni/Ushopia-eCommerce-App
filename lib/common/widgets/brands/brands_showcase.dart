import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brands_cards.dart';

class ABrandShowcase extends StatelessWidget {
  const ABrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    AHelperFunctions.isDarkMode(context);

    return ARoundedContainer(
      showBorder: true,
      borderColor: AColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(ASizes.md),
      margin: EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brands with products counts
          ABrandsCards(showBorder: false),
          const SizedBox(
            height: ASizes.spaceBtwItems,
          ),

          ///Brands top 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final darkMode = AHelperFunctions.isDarkMode(context);
  return Expanded(
    child: ARoundedContainer(
      height: 100,
      padding: EdgeInsets.all(ASizes.md),
      margin: EdgeInsets.only(right: ASizes.sm),
      backgroundColor: darkMode ? AColors.darkGrey : AColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
