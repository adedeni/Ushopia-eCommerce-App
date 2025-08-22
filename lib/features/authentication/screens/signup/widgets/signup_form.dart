import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';

class ASignupForm extends StatelessWidget {
  const ASignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

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
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                width: ASizes.spaceBtwItems,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${ATexts.iAgreeTo} ',
                          style:
                              Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: ATexts.privacyPolicy,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .apply(
                                color: dark
                                    ? AColors.white
                                    : AColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark
                                    ? AColors.white
                                    : AColors.primary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: ' ${ATexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: ATexts.termsOfUse,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                            color: dark
                                ? AColors.white
                                : AColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? AColors.white
                                : AColors.primary,
                          ),
                    ),
                  ]))
                ],
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwSections,),
          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(ATexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
