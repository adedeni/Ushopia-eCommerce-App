import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/shop/screens/product_details/product_details_screen.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '/common/widgets/images/rounded_border_image.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/helpers/helper_functions.dart';

import '../../../styles/shadow_style.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_container_icon.dart';

class AProductsCardVertical extends StatelessWidget {
  const AProductsCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);

    ///Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () =>Get.to(() => ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [
            AShadowStyle.verticalProductShadow,
          ],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: darkMode ? AColors.darkGrey : AColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail, Wishlist Button, Discount Tag
            ARoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ASizes.sm),
              backgroundColor: darkMode ? AColors.dark : AColors.light,
              child: Stack(
                children: [
                  ///Thumbnail Image
                  ARoundedBorderImage(
                    imageUrl: AImages.productImage1,
                    applyImageRadius: true,
                  ),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: ARoundedContainer(
                      radius: ASizes.sm,
                      backgroundColor: AColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ASizes.sm, vertical: ASizes.xs),
                      child: Text(
                        '100%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AColors.black),
                      ),
                    ),
                  ),

                  ///Favorite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ACircularContainerIcon(
                      color: Colors.red,
                      icon: Iconsax.heart5,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),

            ///Grid card details
            Padding(
              padding: EdgeInsets.only(left: ASizes.sm),
              child: SizedBox(//This is to make the column take the full width
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AProductTitleText(
                      title: 'Green AirForce 1 Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: ASizes.spaceBtwItems / 2,
                    ),
                
                    ///Brands Name with verification badge
                    ABrandTitleTextWithVerifyIcon(
                      title: 'Nike',
                    ),
                  ],
                ),
              ),
            ),
            Spacer(), //This is to ensure the product text utilizes max space available to uniformize the 2 or 1 maxLine text scenarios
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Price
                Padding(
                  padding: const EdgeInsets.only(left: ASizes.sm),
                  child: AProductPriceText(
                    price: '800',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ASizes.cardRadiusMd),
                      bottomRight: Radius.circular(ASizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: ASizes.iconLg * 1.2,
                    height: ASizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: AColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



