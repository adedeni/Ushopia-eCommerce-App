import 'package:flutter/material.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';
import '/utilities/helpers/helper_functions.dart';

class ALoginHeader extends StatelessWidget {
  const ALoginHeader({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? AImages.darkAppLogo : AImages.lightAppLogo),
        ),
        Text(ATexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: ASizes.sm,
        ),
        Text(ATexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
