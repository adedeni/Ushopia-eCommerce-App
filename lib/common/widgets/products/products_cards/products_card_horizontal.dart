import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '/common/widgets/custom_shapes/containers/rounded_container.dart';
import '/common/widgets/images/rounded_border_image.dart';
import '/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '/common/widgets/texts/product_price_text.dart';
import '/common/widgets/texts/product_title_text.dart';
import '/utilities/constants/image_strings.dart';
import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '../../icons/circular_container_icon.dart';
import '../../images/circular_image.dart';

class AProductsCardHorizontal extends StatelessWidget {
  const AProductsCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      child: Container(
        width: 310, //This should be changed base on needs
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
         // boxShadow: [AShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: darkMode ? AColors.darkGrey : AColors.lightContainer,
        ),
        child: Row(
          children: [
            //Thumbnail
            ARoundedContainer(
              height: 120,
              padding: EdgeInsets.all(ASizes.sm),
              backgroundColor: darkMode ? AColors.dark : AColors.light,
              child: Stack(
                children: [
                  //Thumbnail Image
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ARoundedBorderImage(
                      imageUrl: AImages.productImage2,
                      applyImageRadius: true,
                    ),
                  ),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: ARoundedContainer(
                      radius: ASizes.sm,
                      backgroundColor: AColors.amber.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: ASizes.sm,
                        vertical: ASizes.xs,
                      ),
                      child: Text(
                        '100%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: AColors.black),
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
                  ),
                ],
              ),
            ),
            //Details
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: ASizes.sm, left: ASizes.sm),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AProductTitleText(
                          title: 'White and Black Puma Venty',
                          smallSize: true,
                        ),
                        SizedBox(height: ASizes.spaceBtwItems / 2),
                        Row(
                          children: [
                            ACircularImage(
                              width: 32,
                              height: 32,
                              overlayColor: darkMode
                                  ? AColors.white
                                  : AColors.black,
                              image: AImages.pumaLogo,
                            ),
                            ABrandTitleTextWithVerifyIcon(title: 'Puma'),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Price
                        Flexible(child: AProductPriceText(price: '18.7 - 573')),
                        //Add to Cart Button
                        Container(
                          decoration: BoxDecoration(
                            color: AColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ASizes.cardRadiusMd),
                              bottomRight: Radius.circular(
                                ASizes.productImageRadius,
                              ),
                            ),
                          ),
                          child: SizedBox(
                            width: ASizes.iconLg * 1.2,
                            height: ASizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(Iconsax.add, color: AColors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
