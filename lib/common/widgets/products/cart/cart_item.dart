import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/image_strings.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '../../images/rounded_border_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class ACartItem extends StatelessWidget {
  const ACartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //Image
        ARoundedBorderImage(
          imageUrl: AImages.productImage7,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(ASizes.sm),
          backgroundColor: darkMode ? AColors.darkerGrey : AColors.light,
        ),
        SizedBox(
          width: ASizes.spaceBtwItems,
        ),

        ///Title, Price and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Brand
              ABrandTitleTextWithVerifyIcon(
                title: 'Nike',
              ),
              Flexible(
                child: AProductTitleText(
                  title: 'Nike Air Force 1',
                  maxLines: 1,
                ),
              ),

              ///Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color: ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size: ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'LG 32',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
