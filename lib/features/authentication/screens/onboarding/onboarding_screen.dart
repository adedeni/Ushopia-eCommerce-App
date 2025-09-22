import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/device/device_utility.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '/utilities/constants/image_strings.dart';

import '/utilities/constants/text_strings.dart';
import 'widgets/onboarding_next_button_with_gradient.dart';

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
              image: AImages.onBoardingImage1,
              title: ATexts.onBoardingTitle1,
              subTitle: ATexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: AImages.onBoardingImage2,
              title: ATexts.onBoardingTitle2,
              subTitle: ATexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: AImages.onBoardingImage3,
              title: ATexts.onBoardingTitle3,
              subTitle: ATexts.onBoardingSubTitle3,
            ),
          ],
        ),

        /// Skip button
        const OnBoardingSkip(),

        /// Dot Navigation smoothPageIndicator
        const OnboardingDotNavigation(),

        /// Circular button
        Positioned(
          bottom: ADeviceUtils.getBottomNavigationBarHeight() ,
          right: ASizes.defaultSpace,
          child: OnboardingNextButtonWithGradient(
            onPressed: () => OnboardingController.instance.nextPage(),
            icon: const Icon(Iconsax.arrow_right_3),
          ),
        )
      ]),
    );
  }
}
