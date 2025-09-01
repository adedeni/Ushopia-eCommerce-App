import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curve_edges/curve_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_container_icon.dart';
import '../../../../../common/widgets/images/rounded_border_image.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/image_strings.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/helpers/helper_functions.dart';

class AProductImageSlider extends StatelessWidget {
  const AProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return ACurveEdgesWidget(
      child: Container(
        color: darkMode ? AColors.darkGrey : AColors.light,
        child: Stack(
          children: [
            ///Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(ASizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AImages.productImage8),
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
                      imageUrl: AImages.productImage6,
                    );
                  },
                ),
              ),
            ),

            ///Appbar Icon
            AAppBar(
              showBackArrow: true,
              actions: [
                ACircularContainerIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
