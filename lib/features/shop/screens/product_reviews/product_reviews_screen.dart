import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/utilities/constants/sizes.dart';
import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import 'widgets/rating_progress_indicator.dart';
import 'widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: AAppBar(
        title: Text(
          'Reviews & Ratings',
        ),
        showBackArrow: true,
      ),

      ///Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReadMoreText(
              "The Nike Air Force 1 is, without a doubt, my go-to shoe for pretty much everything. I've had my pair for years, and they've held up incredibly well. They're super comfortable right out of the box, and the leather just gets better with age. Whether I'm running errands, grabbing coffee with friends, or just walking around town, these are the shoes I reach for every time.",
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),

            SizedBox(
              height: ASizes.spaceBtwItems,
            ),

            ///Overall product ratings
            AOverallProductRating(),
            //Ratings
            ARatingBarIndicator(
              rating: 3.6,
            ),
            Text(
              '14,872',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: ASizes.spaceBtwSections,
            ),

            ///User Review List
            AUserReviewCard(),
            AUserReviewCard(),
          ],
        ),
      ),
    );
  }
}
