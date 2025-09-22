import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/device/device_utility.dart';
import '/utilities/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ASizes.defaultSpace,
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape:const CircleBorder(), backgroundColor: dark ? AColors.primary: Colors.black),
        child:const Icon(Iconsax.arrow_right_3)
      ),
    );
  }
}
