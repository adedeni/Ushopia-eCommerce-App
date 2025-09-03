import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ushopia/common/widgets/texts/section_heading.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class ABillingPaymentSection extends StatelessWidget {
  const ABillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ASectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        SizedBox(height: ASizes.spaceBtwItems / 2),
        Row(
          children: [
            ARoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: darkMode ? AColors.light : AColors.white,
              padding: EdgeInsets.all(ASizes.sm),
              child: Image(
                image: AssetImage(AImages.masterCard),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: ASizes.spaceBtwItems / 2),
            Text('MasterCard', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
