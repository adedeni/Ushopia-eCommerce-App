import 'package:flutter/material.dart';
import 'package:ushopia/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

import 'widgets/product_image_slider.dart';
import 'widgets/ratings_and_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ProductMetaData()

                  ///Attributes

                  ///Checkout Button

                  ///Description

                  ///Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
