import 'package:flutter/material.dart';
import '/utilities/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: ASortableProducts(),
        ),
      ),
    );
  }
}

