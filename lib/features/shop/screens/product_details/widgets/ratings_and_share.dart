import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utilities/constants/sizes.dart';

class ARatingsAndShare extends StatelessWidget {
  const ARatingsAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///Rating
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            SizedBox(
              width: ASizes.spaceBtwItems / 2,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: '(199)',
                  ),
                ],
              ),
            ),
          ],
        ),
    
        ///Share
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: ASizes.iconMd,
            )),
      ],
    );
  }
}
