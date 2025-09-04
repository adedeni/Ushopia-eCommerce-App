import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/features/shop/screens/all_products/all_products.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container_with_gradient.dart';
import '/utilities/constants/image_strings.dart';
import '../../../common/widgets/layouts/grid_layout.dart';
import '../../../common/widgets/products/products_cards/products_card_vertical.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';
import '/common/widgets/custom_shapes/containers/search_containers.dart';
import '/common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Home Screen Header
            const APrimaryHeaderContainerWithGradient(
              child: Column(
                children: [
                  ///App bar
                  AHomeAppBar(),
                  SizedBox(height: ASizes.spaceBtwSections),

                  ///Search bar
                  ASearchContainer(text: ATexts.searchContainerText),
                  SizedBox(height: ASizes.spaceBtwSections),
                  //Categories headings
                  Padding(
                    padding: EdgeInsets.only(left: ASizes.defaultSpace),
                    child: Column(
                      children: [
                        ASectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: AColors.textWhite,
                        ),
                        SizedBox(height: ASizes.spaceBtwItems),
                        //Scrollable categories
                        AHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            ),

            ///Home Screen Body
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  //Home Promo Slider
                  APromoSlider(
                    banners: [
                      AImages.promoBanner1,
                      AImages.promoBanner2,
                      AImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  ///Category Heading
                  ASectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => AllProducts()),
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems),

                  ///Popular product grid
                  AGridLayout(
                    itemCount: 2,
                    itemBuilder: (BuildContext p1, int p2) {
                      return AProductsCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
