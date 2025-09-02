import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:ushopia/common/widgets/texts/section_heading.dart';
import 'package:ushopia/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ushopia/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'widgets/add_to_cart_button.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/ratings_and_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AAddToCartButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            AProductImageSlider(),

            ///Product Details
            Padding(
              padding: EdgeInsets.only(
                right: ASizes.defaultSpace,
                left: ASizes.defaultSpace,
                bottom: ASizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ///Ratings and Share
                  ARatingsAndShare(),

                  ///Price, Title, Stack and Brand
                  ProductMetaData(),

                  ///Attributes
                  AProductAttributes(),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  ///Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  ///Description
                  ASectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "The Nike Air Force 1: An Undisputed Icon The Nike Air Force 1 is more than just a sneaker; it's a cultural phenomenon. From its humble beginnings as a basketball shoe to its current status as a global fashion staple, the AF1 has a rich and fascinating history. This long-form piece will delve into the story of the Air Force 1, exploring its design, its cultural impact, and its enduring legacy.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwItems / 2,
                  ),

                  ///Reviews
                  Divider(),
                  SizedBox(
                    height: ASizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ASectionHeading(
                        title: 'Reviews(472)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: Icon(
                          Iconsax.arrow_right_34,
                          size: 18, 
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
