import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

import '/utilities/constants/colors.dart';

class ACartCounterIcon extends StatelessWidget {
  const ACartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {

    final darkMode = AHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: darkMode ? AColors.white.withOpacity(0.5) : AColors.black.withOpacity(0.5),
             
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: AColors.white,
                      fontSizeFactor: 0.9,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
