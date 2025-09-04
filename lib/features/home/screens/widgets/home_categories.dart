import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/features/shop/screens/sub_category/sub_categories.dart';
import '/../common/widgets/image_text_widgets/vertical_image_text.dart';
import '/../utilities/constants/image_strings.dart';

class AHomeCategories extends StatelessWidget {
  const AHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AVerticalImageText(
            image: AImages.sportIcon,
            title: 'Sport Icon',
            onTap: () => Get.to(()=> SubCategories()),
          );
        },
      ),
    );
  }
}

