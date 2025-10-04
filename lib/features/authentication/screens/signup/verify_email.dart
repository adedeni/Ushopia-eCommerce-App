import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/data/repositories/authentication/authentication_repository.dart';
import 'package:ushopia/features/authentication/controllers/signup/verify_email_controller.dart';
import '../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';
import '/utilities/helpers/helper_functions.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String ? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //to remove back arrow from app bar
        actions: [
          IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          //Padding to give default equal space on all sides in all screens
          padding: const EdgeInsetsGeometry.all(ASizes.defaultSpace),
          child: SizedBox(
            child: Column(
              children: [
                ///Image
                Image(
                  image: const AssetImage(
                    AImages.deliveredEmailIllustration,
                  ),
                  width: AHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwSections,
                ),

                ///Title and subtitle
                Text(
                  ATexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                Text(
                  email ?? '',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                Text(
                  ATexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwSections,
                ),

                ///Buttons
                AGradientElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  text: ATexts.aContinue,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => controller.sendEmailVerification(),
                    child: const Text(ATexts.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
