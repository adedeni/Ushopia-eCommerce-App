import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:ushopia/features/authentication/controllers/onboarding_controller.dart';
import 'package:ushopia/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ushopia/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ushopia/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ushopia/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';

import 'package:ushopia/utilities/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(children: [
        /// Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        /// Skip button
        const OnBoardingSkip(),

        /// Dot Navigation smoothPageIndicator
        const OnboardingDotNavigation(),

        /// Circular button
        const OnboardingNextButton()
      ]),
    );
  }
}

