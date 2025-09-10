import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class ACouponCodeContainer extends StatelessWidget {
  const ACouponCodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      showBorder: true,
      backgroundColor: darkMode ? AColors.dark : AColors.white,
      padding: EdgeInsets.only(
        top: ASizes.sm,
        bottom: ASizes.sm,
        right: ASizes.sm,
        left: ASizes.sm,
      ),
      child: Row(
        children: [
          //Textfield
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          //Button
          SizedBox(
            width: 80,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: darkMode
                    ? AColors.white.withOpacity(0.5)
                    : AColors.dark.withOpacity(0.5),
                backgroundColor: AColors.grey.withOpacity(0.3),
                side: BorderSide(color: AColors.grey.withOpacity(0.1)),
              ),
              onPressed: () {},
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
