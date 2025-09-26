import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ushopia/utilities/validators/validation.dart';
import '../../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';

class ASignupForm extends StatelessWidget {
  const ASignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          //First name and Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ATexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ASizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      AValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ATexts.lastName,
                    prefixIcon: Icon(Iconsax.user_tick),
                  ),
                ),
              ),
            ],
          ),

          ///Username
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                AValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ///Email
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => AValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          ///Phone number
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          ///Password
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.password,
            validator: (value) => AValidator.validatePassword(value),
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),

          ///Terms and conditions
          const ATermAndConditionCheckbox(),
          const SizedBox(height: ASizes.spaceBtwSections),

          ///Sign Up Button
          AGradientElevatedButton(
            onPressed: () {
              controller.signup();
            },
            text: ATexts.createAccount,
          ),
        ],
      ),
    );
  }
}
