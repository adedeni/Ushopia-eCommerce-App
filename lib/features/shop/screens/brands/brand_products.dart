import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/common/widgets/brands/brands_cards.dart';
import 'package:ushopia/common/widgets/products/sortable/sortable_products.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(title: Text('Adidas')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Brand Details
              ABrandsCards(showBorder: true),
              SizedBox(height: ASizes.spaceBtwSections),
              ASortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
