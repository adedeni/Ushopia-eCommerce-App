import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/features/authentication/screens/signup/verify_email.dart';
import '/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';

class ASignupForm extends StatelessWidget {
  const ASignupForm({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    
    return Form(
      child: Column(
        children: [
          //First name and Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ATexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: ASizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
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
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
    
          ///Email
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          ///Phone number
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
    
          ///Password
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              labelText: ATexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),
    
          ///Terms and conditions
          const ATermAndConditionCheckbox(),
          const SizedBox(height: ASizes.spaceBtwSections,),
          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(
                  () { 
                    return const VerifyEmailScreen();
                  },
                ),
              child: const Text(ATexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}

