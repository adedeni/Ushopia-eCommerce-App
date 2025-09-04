import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/layouts/grid_layout.dart';
import 'package:ushopia/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: const Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
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
                      return DropdownMenuItem(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
              ),
              //Products
              AGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return AProductsCardVertical();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
