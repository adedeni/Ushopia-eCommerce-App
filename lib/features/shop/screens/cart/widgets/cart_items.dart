import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../product_details/widgets/product_price_text.dart';

class ACartItems extends StatelessWidget {
  const ACartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: ASizes.spaceBtwSections,
        );
      },
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ACartItem(),
            if (showAddRemoveButton)
              SizedBox(
                height: ASizes.spaceBtwItems,
              ),
            if (showAddRemoveButton)
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
    );
  }
}
