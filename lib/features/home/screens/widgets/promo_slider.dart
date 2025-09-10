import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controllers.dart';
import '/../common/widgets/custom_shapes/containers/circular_container.dart';
import '/../common/widgets/images/rounded_border_image.dart';
import '/../utilities/constants/colors.dart';
import '/../utilities/constants/sizes.dart';

class APromoSlider extends StatelessWidget {
  const APromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      HomeControllers(),
    );

    return Column(
      children: [
        //Promotions Banner Image
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) =>  ARoundedBorderImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: ASizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ACircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AColors.primary
                        : AColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
