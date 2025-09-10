import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';

class AVerticalImageText extends StatelessWidget {
  const AVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AColors.white,
    this.backgroundColor ,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              //Circular Icon
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ASizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (darkMode ? AColors.black : AColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: darkMode ? AColors.light : AColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),
            //Bottom Text
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
