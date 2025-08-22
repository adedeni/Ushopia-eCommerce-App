import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(ASizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(
              ATexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            Text(
              ATexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections * 2,
            ),
            ///Text fields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ATexts.email,
                  prefixIcon: Icon(Iconsax.sms)),
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections * 2,
            ),
            ///Summit buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(()=> const ResetPassword()), child: const Text(ATexts.submit)))
          ],
        ),
      ),
    );
  }
}
