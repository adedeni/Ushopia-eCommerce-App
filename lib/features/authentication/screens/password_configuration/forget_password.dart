import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:ushopia/utilities/validators/validation.dart';
import '../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(
              ATexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            Text(
              ATexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: ASizes.spaceBtwSections * 2),

            ///Text fields
            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: AValidator.validateEmail,
                decoration: const InputDecoration(
                  labelText: ATexts.email,
                  prefixIcon: Icon(Iconsax.sms),
                ),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwSections * 2),

            ///Summit buttons
            AGradientElevatedButton(
              onPressed: () {
                controller.sendPasswordResetEmail();
              },
              text: ATexts.submit,
            ),
          ],
        ),
      ),
    );
  }
}