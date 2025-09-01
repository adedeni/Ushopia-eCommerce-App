import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/custom_shapes/curve_edges/curve_edges_widget.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            ACurveEdgesWidget(
              child: Container(
                color: darkMode ? AColors.darkGrey : AColors.light,
                child: Stack(
                  children: [
                    ///Main Large Image
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(ASizes.productImageRadius * 2),
                        child: Center(
                          child: Image(
                            image: AssetImage(AImages.productImage5),
                          ),
                        ),
                      ),
                    ),
                    ///Image Slider
                  ],
                ),
              ),
            ),

            ///Product Details
          ],
        ),
      ),
    );
  }
}
