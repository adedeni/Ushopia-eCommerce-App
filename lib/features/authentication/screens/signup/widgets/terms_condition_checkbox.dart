import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ushopia/features/authentication/controllers/signup/signup_controller.dart';
import '/utilities/constants/colors.dart';
import '/utilities/constants/sizes.dart';
import '/utilities/constants/text_strings.dart';
import '/utilities/helpers/helper_functions.dart';

class ATermAndConditionCheckbox extends StatelessWidget {
  const ATermAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) {
                controller.privacyPolicy.value =
                    !controller.privacyPolicy.value;
              },
            ),
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${ATexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: ATexts.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AColors.white : AColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? AColors.white : AColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: ' ${ATexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: ATexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AColors.white : AColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? AColors.white : AColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
