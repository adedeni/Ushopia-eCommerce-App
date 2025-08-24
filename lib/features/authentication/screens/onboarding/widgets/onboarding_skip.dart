import 'package:flutter/material.dart';
import '/features/authentication/controllers/onboarding_controller.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ADeviceUtils.getAppBarHeight(),
      right: ASizes.defaultSpace,
      child: TextButton(
        onPressed: ()=> OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

