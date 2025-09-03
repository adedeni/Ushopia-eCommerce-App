import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/texts/section_heading.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class ABillingAddressSection extends StatelessWidget {
  const ABillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ASectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Adedeni', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: ASizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(Icons.phone, color: AColors.grey, size: 16),
            SizedBox(width: ASizes.spaceBtwItems),
            Text(
              '+234(0)9036176161',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: ASizes.spaceBtwItems / 2),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_history, color: AColors.grey, size: 16),
            SizedBox(width: ASizes.spaceBtwItems ),
            Expanded(
              child: Text(
                '35 UI-Road, Ibadan, Oyo, Nigeria',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
