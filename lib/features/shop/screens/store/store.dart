import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/search_containers.dart';
import 'package:ushopia/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ushopia/common/widgets/texts/section_heading.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

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
              backgroundColor: AHelperFunctions.isDarkMode(context)
                  ? AColors.black
                  : AColors.white,
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
                      height: ASizes.spaceBtwItems / 2,
                    ),

                    //Custom Brands
                    ARoundedContainer(
                      padding: EdgeInsets.all(ASizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// Icon
                          CircularImage(darkMode: darkMode)
                        ],
                      ),
                    )
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

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      padding: EdgeInsets.all(ASizes.sm),
      decoration: BoxDecoration(
        color: darkMode ? AColors.black : AColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: const AssetImage(AImages.clothIcon),
        color: darkMode ? AColors.black : AColors.white,
      ),
    );
  }
}
