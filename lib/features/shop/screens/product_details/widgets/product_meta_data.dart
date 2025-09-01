import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ushopia/common/widgets/images/circular_image.dart';
import 'package:ushopia/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ushopia/common/widgets/texts/product_title_text.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/enums.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ///Price and sales price
        Row(
          children: [
            ///Sale Tag
            ARoundedContainer(
              radius: ASizes.sm,
              backgroundColor: AColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                horizontal: ASizes.sm,
                vertical: ASizes.xs,
              ),
              child: Text(
                '100%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AColors.black),
              ),
            ),
            SizedBox(
              width: ASizes.spaceBtwItems,
            ),

            ///Price

            AProductPriceText(
              price: '442',
              lineThrough: true,
            ),
            SizedBox(
              width: ASizes.spaceBtwItems,
            ),
            AProductPriceText(
              price: '231',
              isLarge: true,
            ),
          ],
        ),
        SizedBox(
          height: ASizes.spaceBtwItems / 1.5,
        ),

        ///Title
        ProductTitleText(title: 'Nike AirForce One'),
        SizedBox(
          height: ASizes.spaceBtwItems / 1.5,
        ),

        ///Stock Status
        Row(
          children: [
            ProductTitleText(title: 'Status'),
            SizedBox(
              width: ASizes.spaceBtwItems / 1.5,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: ASizes.spaceBtwItems / 1.5,
        ),

        ///Brand
        Row(
          children: [
            ACircularImage(
              width: 32,
              height: 32,
              overlayColor: darkMode ? AColors.white : AColors.black,
              image: AImages.nikeLogo,
            ),
            ABrandTitleTextWithVerifyIcon(
              title: 'Nike',
              brandTextSIze: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
