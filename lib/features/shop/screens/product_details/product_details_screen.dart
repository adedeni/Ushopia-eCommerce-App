import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/custom_shapes/curve_edges/curve_edges_widget.dart';
import 'package:ushopia/common/widgets/images/rounded_border_image.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

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
                    Positioned(
                      bottom: 30,
                      right: 0,
                      left: ASizes.defaultSpace,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          itemCount: 6,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: ASizes.spaceBtwItems,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ARoundedBorderImage(
                              width: 80,
                              backgroundColor:
                                  darkMode ? AColors.darkGrey : AColors.light,
                              border: Border.all(color: AColors.primary),
                              padding: EdgeInsets.all(ASizes.sm),
                              imageUrl: AImages.productImage3,
                            );
                          },
                        ),
                        
                      ),
                      
                    ),
                    
                    
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
