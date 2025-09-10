import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utilities/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../products_cards/products_card_vertical.dart';

class ASortableProducts extends StatelessWidget {
  const ASortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items:
              [
                'Name',
                'Higher Price',
                'Lower Price',
                'Sale',
                'Newest',
                'Popularity',
              ].map((option) {
                return DropdownMenuItem(value: option, child: Text(option));
              }).toList(),
        ),
        SizedBox(height: ASizes.spaceBtwSections), //Products
        AGridLayout(
          itemCount: 4,
          itemBuilder: (_, index) {
            return AProductsCardVertical();
          },
        ),
      ],
    );
  }
}
