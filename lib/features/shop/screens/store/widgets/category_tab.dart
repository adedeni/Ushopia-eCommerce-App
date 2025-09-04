import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../all_products/all_products.dart';
import '/common/widgets/layouts/grid_layout.dart';
import '/common/widgets/products/products_cards/products_card_vertical.dart';
import '/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brands_showcase.dart';
import '../../../../../utilities/constants/image_strings.dart';
import '../../../../../utilities/constants/sizes.dart';

class ACategoryTab extends StatelessWidget {
  const ACategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(ASizes.defaultSpace),
            child: Column(
              children: [
                ///Brands
                ABrandShowcase(
                  images: [
                    AImages.productImage3,
                    AImages.productImage2,
                    AImages.productImage1,
                  ],
                ),
                SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                ABrandShowcase(
                  images: [
                    AImages.productImage3,
                    AImages.productImage2,
                    AImages.productImage1,
                  ],
                ),
                SizedBox(
                  height: ASizes.spaceBtwItems,
                ),

                ///Products
                ASectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed:  () => Get.to(() => AllProducts()),
                ),
                SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                AGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => AProductsCardVertical(),
                ),
                SizedBox(
                  height: ASizes.spaceBtwSections,
                )
              ],
            ),
          ),
        ]);
  }
}
