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
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, title and subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? AImages.lightAppLogo : AImages.darkAppLogo),
                  ),
                  Text(ATexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: ASizes.sm,
                  ),
                  Text(ATexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: ASizes.spaceBtwInputFields / 3),

              ///Form
              Form(
                  child: Column(
                children: [
                  ///Email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.profile_circle),
                        labelText: ATexts.email),
                  ),
                  const SizedBox(height: ASizes.spaceBtwInputFields),

                  ///Password
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: ATexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: ASizes.spaceBtwInputFields / 2),
                  // Remember me and forget password
                   Row(
                    children: [
                      //Remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(ATexts.rememberMe)
                          
                        ],
                      )
                      //Forget password
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
