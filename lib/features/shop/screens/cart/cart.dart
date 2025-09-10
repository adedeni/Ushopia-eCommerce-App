import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/features/shop/screens/checkout/checkout.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/buttons/gradient_elevated_buttons.dart';
import '../../../../utilities/constants/sizes.dart';
import 'widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(ASizes.defaultSpace),
        child: ACartItems(),
      ),

      //Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: AGradientElevatedButton(
          text: 'Checkout \$769',
          onPressed: () => Get.to(() => CheckoutScreen()),
        ),
      ),
    );
  }
}
