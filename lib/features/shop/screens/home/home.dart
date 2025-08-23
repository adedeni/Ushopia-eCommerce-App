import 'package:flutter/material.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_containers.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            APrimaryHeaderContainer(
              child: Column(
                children: [
                  ///App bar
                  AHomeAppBar(),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  ///Search bar
                  ASearchContainer(
                    text: ATexts.searchButton,
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
                        ),
                        SizedBox(
                          height: ASizes.spaceBtwItems,
                        ),
                      ],
                    ),
                  ),
                  //Scrollable categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
