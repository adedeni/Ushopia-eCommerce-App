import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/authentication/controllers/onboarding_controller.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/device/device_utility.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape:const CircleBorder(), backgroundColor: dark ? TColors.primary: Colors.black),
        child:const Icon(Iconsax.arrow_right_3)
      ),
    );
  }
}
