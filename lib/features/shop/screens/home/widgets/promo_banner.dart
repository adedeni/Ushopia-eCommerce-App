import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '/../common/widgets/custom_shapes/containers/circular_container.dart';
import '/../common/widgets/images/rounded_border_image.dart';
import '/../utilities/constants/colors.dart';
import '/../utilities/constants/image_strings.dart';
import '/../utilities/constants/sizes.dart';

class APromoBanner extends StatelessWidget {
  const APromoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Promotions Banner Image
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
          ),
          items: [
            ARoundedBorderImage(
              imageUrl: AImages.promoBanner1,
            ),
            ARoundedBorderImage(
              imageUrl: AImages.promoBanner2,
            ),
            ARoundedBorderImage(
              imageUrl: AImages.promoBanner3,
            ),
          ],
        ),
        const SizedBox(
          height: ASizes.spaceBtwItems,
        ),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              ACircularContainer(
                width: 20, 
                height: 4,
                margin: EdgeInsets.only(right: 10),
                backgroundColor: AColors.error,
              ),
          ],
        ),
      ],
    );
  }
}
