import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ushopia/features/authentication/controllers/onboarding_controller.dart';
import 'package:ushopia/utils/constants/colors.dart';
import 'package:ushopia/utils/constants/sizes.dart';
import 'package:ushopia/utils/device/device_utility.dart';
import 'package:ushopia/utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, count: 3,
        effect:  ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6,),
        ),
    );
  }
}
