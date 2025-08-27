import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/layouts/grid_layout.dart';
import 'package:ushopia/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ushopia/utilities/constants/enums.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/custom_shapes/containers/rounded_container.dart';
import '/common/widgets/custom_shapes/containers/search_containers.dart';
import '/common/widgets/products/cart/cart_menu_icon.dart';
import '/common/widgets/texts/section_heading.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/helpers/helper_functions.dart';
import '../../../../common/widgets/images/circular_image.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        //Store App Bar
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ACartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: darkMode ? AColors.black : AColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.all(ASizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: ASizes.spaceBtwItems,
                    ),
                    //Search Bar
                    ASearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      height: ASizes.spaceBtwSections,
                    ),
                    //Featured Brands
                    ASectionHeading(
                      title: 'Feature Brands',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: ASizes.spaceBtwItems / 1.5,
                    ),

                    //Custom Brands
                    AGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: ARoundedContainer(
                              padding: EdgeInsets.all(ASizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [

                                  /// Icon
                                  Flexible(
                                    child: ACircularImage(
                                      isNetworkImage:
                                          false, //Change this when you start getting image from backend
                                      image: AImages.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: darkMode
                                          ? AColors.white
                                          : AColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: ASizes.spaceBtwItems / 2,
                                  ),

                                  ///Text
                                  Expanded(//flexible can also be applied here
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ABrandTitleTextWithVerifyIcon(
                                          title: 'Nike',
                                          brandTextSIze: TextSizes.large,
                                        ),
                                        Text(
                                          '256 Products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
