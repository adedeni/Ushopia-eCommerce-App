import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '../../controllers/forget_password/forget_password_controller.dart';
import '/features/authentication/screens/login/login.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';

import '/utilities/constants/text_strings.dart';
import '/utilities/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //Remove back arrow
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(AImages.deliveredEmailIllustration),
                width: AHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              ///Email, Title and subtitle
              Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                ATexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              Text(
                ATexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              ///Buttons
              AGradientElevatedButton(
                onPressed: () {
                  Get.offAll(() => const LoginScreen());
                },
                text: ATexts.done,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    ForgetPasswordController.instance.resendPasswordResetEmail(
                      email,
                    );
                  },
                  child: const Text(ATexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
