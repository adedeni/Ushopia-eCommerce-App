import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/buttons/gradient_elevated_buttons.dart';
import '/features/authentication/screens/password_configuration/forget_password.dart';
import '/features/authentication/screens/signup/signup.dart';
import '/navigation_menu.dart';
import '/utilities/constants/sizes.dart';
import '/../../../utilities/constants/text_strings.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.profile_circle),
                  labelText: ATexts.usernameOrEmail),
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
            const SizedBox(height: ASizes.spaceBtwInputFields / 1.5),
            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ATexts.rememberMe)
                  ],
                ),
                //Forget password
                TextButton(
                  onPressed: () => Get.to(
                    () => const ForgetPassword(),
                  ),
                  child: const Text(ATexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections,
            ),

            //Sign in Button
            AGradientElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              text: ATexts.signIn,
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(
                  () {
                    return const SignupScreen();
                  },
                ),
                child: const Text(ATexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
