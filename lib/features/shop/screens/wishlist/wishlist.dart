import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/common/widgets/icons/circular_container_icon.dart';
import '/common/widgets/layouts/grid_layout.dart';
import '/common/widgets/products/products_cards/products_card_vertical.dart';
import '/features/home/screens/home_screen.dart';
import '/utilities/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ACircularContainerIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            AGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => AProductsCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
