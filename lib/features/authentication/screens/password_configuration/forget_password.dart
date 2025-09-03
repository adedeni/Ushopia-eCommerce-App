import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/features/authentication/screens/password_configuration/reset_password.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';

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
                  labelText: ATexts.email, prefixIcon: Icon(Iconsax.sms)),
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections * 2,
            ),

            ///Summit buttons
            AGradientElevatedButton(
              onPressed: () => Get.off(() => const ResetPassword()),
              text: ATexts.submit,
            ),
          ],
        ),
      ),
    );
  }
}
