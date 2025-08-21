import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ushopia/features/authentication/controllers/onboarding_controller.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/device/device_utility.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = AHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ASizes.defaultSpace,
      
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, count: 3,
        effect:  ExpandingDotsEffect(activeDotColor: dark ? AColors.light : AColors.dark, dotHeight: 6,),
        ),
    );
  }
}
