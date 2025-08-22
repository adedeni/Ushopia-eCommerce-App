import 'package:flutter/material.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class ATermAndConditionCheckbox extends StatelessWidget {
  const ATermAndConditionCheckbox({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
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
    );
  }
}
