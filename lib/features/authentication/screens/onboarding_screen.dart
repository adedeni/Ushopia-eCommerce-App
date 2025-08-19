import 'package:flutter/material.dart';
import 'package:ushopia/utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        /// Horizontal scrollable pages
        PageView(
          children: const [
            Column(
              children: [
                Image(
                  image: AssetImage(TImages.onBoardingImage1),
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
