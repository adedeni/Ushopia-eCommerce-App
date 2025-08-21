import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/styles/spacing_style.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, title and subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              ///Form
              Form(
                  child: Column(
                children: [
                  ///Email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.profile_circle),
                        labelText: TTexts.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  ///Password
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
