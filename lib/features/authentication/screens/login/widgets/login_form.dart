import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/features/authentication/controllers/login/login_controller.dart';
import 'package:ushopia/utilities/validators/validation.dart';
import '../../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/features/authentication/screens/password_configuration/forget_password.dart';
import '/features/authentication/screens/signup/signup.dart';
import '/utilities/constants/sizes.dart';
import '/../../../utilities/constants/text_strings.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              controller: controller.email,
              validator: (value) => AValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.profile_circle),
                labelText: ATexts.usernameOrEmail,
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),

            ///Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => AValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                expands: false,
                decoration: InputDecoration(
                  labelText: ATexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields / 1.5),
            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.value =
                              !controller.rememberMe.value;
                        },
                      ),
                    ),
                    const Text(ATexts.rememberMe),
                  ],
                ),
                //Forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(ATexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwSections),

            //Login in Button
            AGradientElevatedButton(
              onPressed: () {
                controller.emailAndPasswordLogin();
              },
              text: ATexts.signIn,
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() {
                  return const SignupScreen();
                }),
                child: const Text(ATexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
