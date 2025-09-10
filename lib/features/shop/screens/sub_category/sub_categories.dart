import 'package:flutter/material.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/images/rounded_border_image.dart';
import '/common/widgets/products/products_cards/products_card_horizontal.dart';
import '/common/widgets/texts/section_heading.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              ARoundedBorderImage(
                imageUrl: AImages.promoBanner2,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: ASizes.spaceBtwSections),
              //Sub categories
              Column(
                children: [
                  //Heading
                  ASectionHeading(title: 'Sport shirts', onPressed: () {}),
                  SizedBox(height: ASizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 125,
                    child: ListView.separated(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return AProductsCardHorizontal();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: ASizes.spaceBtwItems);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
