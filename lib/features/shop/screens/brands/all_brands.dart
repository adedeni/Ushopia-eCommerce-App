import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/common/widgets/brands/brands_cards.dart';
import 'package:ushopia/common/widgets/layouts/grid_layout.dart';
import 'package:ushopia/common/widgets/texts/section_heading.dart';
import 'package:ushopia/features/shop/screens/brands/brand_products.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              ASectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: ASizes.spaceBtwItems),

              //Brands
              AGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) {
                  return ABrandsCards(
                    showBorder: true,
                    onTap: () => Get.to(() => BrandProducts()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
