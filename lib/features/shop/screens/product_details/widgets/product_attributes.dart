import 'package:flutter/material.dart';
import '/common/widgets/custom_shapes/containers/rounded_container.dart';
import '/common/widgets/texts/product_price_text.dart';
import '/common/widgets/texts/product_title_text.dart';
import '/common/widgets/texts/section_heading.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class AProductAttributes extends StatelessWidget {
  const AProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected attributes pricing, and description
        ARoundedContainer(
          padding: EdgeInsets.all(ASizes.md),
          backgroundColor: darkMode ? AColors.darkGrey : AColors.grey,
          child: Column(
            children: [
              ///Title, Price and Stock Status
              Row(
                children: [
                  ASectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: ASizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ///Actual Price
                          AProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          SizedBox(
                            width: ASizes.spaceBtwItems / 2,
                          ),
                          Text(
                            '\$93',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: ASizes.spaceBtwItems / 2,
                          ),

                          ///Discounted Price
                          AProductPriceText(price: '124')
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          AProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              ///Variation Description
              AProductTitleText(
                title:
                    'This is the description of the product and it cost of the products in stock',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: ASizes.spaceBtwItems,
        ),

        ///Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ASectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 6,
              children: [
                AChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                AChoiceChip(
                  text: 'Yellow',
                  selected: true,
                  onSelected: (value) {},
                ),
                AChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ASectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 2,
              children: [
                AChoiceChip(
                  text: 'LG 31',
                  selected: true,
                  onSelected: (value) {},
                ),
                AChoiceChip(
                  text: 'MD 44',
                  selected: false,
                  onSelected: (value) {},
                ),
                AChoiceChip(
                  text: 'SM 37',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
