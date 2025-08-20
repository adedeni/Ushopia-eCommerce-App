import 'package:flutter/material.dart';
import 'package:ushopia/utils/constants/image_strings.dart';
import 'package:ushopia/utils/constants/sizes.dart';
import 'package:ushopia/utils/constants/text_strings.dart';
import 'package:ushopia/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        /// Horizontal scrollable pages
        PageView(
          children: [
            Column(
              children: [
                Image(
                  width: THelperFunctions.screenWidth() * 0.8,
                  height: THelperFunctions.screenHeight() * 0.6,
                  image: const AssetImage(TImages.onBoardingImage1),
                ),
                Text(
                  TTexts.onBoardingTitle1,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Text(
                  TTexts.onBoardingSubTitle1,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        )

        /// Skip button

        /// Dot Navigation smoothPageIndicator

        /// Circular button
      ]),
    );
  }
}
