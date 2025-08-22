import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/features/authentication/screens/login/login.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

import '../../../../common/widgets/success_screen/success_screen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //to remove back arrow from app bar
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
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
                  'support@adedeni.com',
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(
                      () {
                        return SuccessScreen(
                          image: AImages.staticSuccessIllustration,
                          title: ATexts.yourAccountCreatedTitle,
                          subtitle: ATexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(
                            ()=> const LoginScreen(),
                          ),
                        );
                      },
                    ),
                    child: const Text(ATexts.aContinue),
                  ),
                ),
                const SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Get.to(
                      () {
                        // return const ResendEmailScreen();
                      },
                    ),
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
