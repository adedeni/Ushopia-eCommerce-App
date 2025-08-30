import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/tabbar/tabbar.dart';
import '../../../../common/widgets/brands/brands_cards.dart';
import '/common/widgets/layouts/grid_layout.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/custom_shapes/containers/search_containers.dart';
import '/common/widgets/products/cart/cart_menu_icon.dart';
import '/common/widgets/texts/section_heading.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/helpers/helper_functions.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      //This is must to enable controller for the tabbar designed at the bottom
      length: 5,
      child: Scaffold(
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
                  expandedHeight: 440, //Space between Appbar and TabBar
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

                        //Custom Brands Grids
                        AGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              //Use backend to pass each brand and onPress event
                              return ABrandsCards(
                                showBorder: false,
                              );
                            }),
                      ],
                    ),
                  ),

                  ///Tab bar design
                  bottom: ATabbar(tabs: [
                    //Headings
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ])),
            ];
          },
          body: TabBarView(
            children: [
              ACategoryTab(),
              ACategoryTab(),
              ACategoryTab(),
              ACategoryTab(),
              ACategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
