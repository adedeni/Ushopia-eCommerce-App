// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_containers.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_border_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Home Screen Header
            const APrimaryHeaderContainer(
              child: Column(
                children: [
                  ///App bar
                  AHomeAppBar(),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  ///Search bar
                  ASearchContainer(
                    text: ATexts.searchContainerText,
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),
                  //Categories headings
                  Padding(
                    padding: EdgeInsets.only(
                      left: ASizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        ASectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: AColors.textWhite,
                        ),
                        SizedBox(
                          height: ASizes.spaceBtwItems,
                        ),
                        //Scrollable categories
                        AHomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Home Screen Body
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
