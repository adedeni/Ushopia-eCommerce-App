import 'package:flutter/material.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/buttons/gradient_elevated_buttons.dart';
import '/common/widgets/texts/product_price_text.dart';
import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utilities/constants/sizes.dart';

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
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: ASizes.spaceBtwSections,
            );
          },
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ACartItem(),
                SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AProductAddRemoveWithQuantity(),
                    AProductPriceText(
                      price: '769',
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: AGradientElevatedButton(
          text: 'Checkout \$769',
          onPressed: () {},
        ),
      ),
    );
  }
}
