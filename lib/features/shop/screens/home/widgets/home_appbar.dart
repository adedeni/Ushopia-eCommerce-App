import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/text_strings.dart';

class AHomeAppBar extends StatelessWidget {
  const AHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ATexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AColors.grey),
          ),
          Text(
            ATexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AColors.white),
          ),
        ],
      ),
      actions: [
        ACartCounterIcon(
          onPressed: () {},
          iconColor: AColors.white,
        ),
      ],
    );
  }
}
