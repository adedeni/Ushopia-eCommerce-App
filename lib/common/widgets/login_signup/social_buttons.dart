import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/features/authentication/controllers/login/login_controller.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';

class ASocialButtons extends StatelessWidget {
  const ASocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              controller.googleSignIn();
            },
            icon: const Image(
              height: ASizes.iconMd,
              width: ASizes.iconMd,
              image: AssetImage(AImages.google),
            ),
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: ASizes.iconMd,
              width: ASizes.iconMd,
              image: AssetImage(AImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
