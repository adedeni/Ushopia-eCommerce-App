import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/image_strings.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class ABrandsCards extends StatelessWidget {
  const ABrandsCards({
    super.key,
    this.onTap,
    required this.showBorder,
    this.backgroundColor = Colors.transparent,
    this.isNetworkImage = false,
    this.image = AImages.clothIcon,
    this.overlayColor,
    this.productCount = '25 Products',
  });

  final void Function()? onTap;
  final bool showBorder, isNetworkImage;
  final Color backgroundColor;
  final Color ? overlayColor;
  final String image, productCount;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      //Container design
      child: ARoundedContainer(
        padding: EdgeInsets.all(ASizes.sm),
        showBorder: showBorder,
        backgroundColor: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Icon
            Flexible(
              child: ACircularImage(
                isNetworkImage:
                    isNetworkImage, //Change this when you start getting image from backend
                image: image,
                backgroundColor: backgroundColor,
                overlayColor:
                    overlayColor ?? (darkMode ? AColors.white : AColors.black),
              ),
            ),
            const SizedBox(
              width: ASizes.spaceBtwItems / 2,
            ),

            ///Text
            ///The expanded widget and mainAxisSize.min are important here to keep the element vertically centered, avoid overflow and keep texts inside their boundaries
            Expanded(
              //flexible can also be applied here
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ABrandTitleTextWithVerifyIcon(
                    title: 'Nike',
                    brandTextSIze: TextSizes.large,
                  ),
                  Text(
                    productCount,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
