import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/common/widgets/login_signup/form_divider.dart';
import 'package:ushopia/common/widgets/login_signup/social_buttons.dart';
import 'package:ushopia/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                ATexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),
              //Form
              ASignupForm(dark: dark),
              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),
              //Divider
              AFormDivider(dividerText: ATexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),
              //Footer or Social Buttons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

