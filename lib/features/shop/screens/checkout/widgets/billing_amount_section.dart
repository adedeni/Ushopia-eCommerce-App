import 'package:flutter/material.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class ABillingAmountSection extends StatelessWidget {
  const ABillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$492', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems / 2),
        //Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$4.33', style: Theme.of(context).textTheme.labelLarge),
          ],
          
        ),
        SizedBox(height: ASizes.spaceBtwItems / 2),
        //Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$0.98', style: Theme.of(context).textTheme.labelLarge),
          ],
          
        ),
        SizedBox(height: ASizes.spaceBtwItems / 2),
        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$3,842', style: Theme.of(context).textTheme.titleMedium),
          ],
          
        ),
      ],
    );
  }
}
