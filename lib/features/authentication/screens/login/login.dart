import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/common/styles/spacing_style.dart';
import 'package:ushopia/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ushopia/common/widgets/login_signup/form_divider.dart';
import 'package:ushopia/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ushopia/common/widgets/login_signup/social_buttons.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight/1.2,
          child: Column(
            children: [
              ///Logo, title and subtitle
              const ALoginHeader(),

              ///Form
              const ALoginForm(),
              //Divider
              AFormDivider( dividerText: ATexts.orSignInWith.capitalize!),
              const SizedBox(height: ASizes.spaceBtwSections,),
              //Footer
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}







