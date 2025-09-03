import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ushopia/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ushopia/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class AUserReviewCard extends StatelessWidget {
  const AUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AImages.userProfileImage2),
                ),
                SizedBox(
                  width: ASizes.spaceBtwItems,
                ),
                Text(
                  ATexts.homeAppbarSubTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        SizedBox(
          height: ASizes.spaceBtwItems,
        ),

        //Review
        Row(
          children: [
            ARatingBarIndicator(
              rating: 4,
            ),
            SizedBox(
              width: ASizes.spaceBtwItems,
            ),
            Text(
              '14 Aug, 2025',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: ASizes.spaceBtwItems,
        ),
        ReadMoreText(
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.verifyAndRating),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AColors.verifyAndRating),
          "I just got a pair of Air Force 1s and I'm obsessed! They're super comfortable and the classic design goes with everything. The leather feels premium and durable, so I know they'll last. Definitely worth the hype.",
        ),
        SizedBox(
          height: ASizes.spaceBtwItems,
        ),

        //Company review
        ARoundedContainer(
          backgroundColor: darkMode ? AColors.darkGrey : AColors.grey,
          child: Padding(
            padding: EdgeInsetsGeometry.all(ASizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ushopia',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '14 Aug, 2025',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                ReadMoreText(
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AColors.verifyAndRating),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AColors.verifyAndRating),
                  "I just got a pair of Air Force 1s and I'm obsessed! They're super comfortable and the classic design goes with everything. The leather feels premium and durable, so I know they'll last. Definitely worth the hype.",
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: ASizes.spaceBtwSections,)
      ],
    );
  }
}
