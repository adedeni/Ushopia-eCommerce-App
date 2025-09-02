


import 'package:flutter/material.dart';

import 'product_indicator_and_rating.dart';

class AOverallProductRating extends StatelessWidget {
  const AOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '3.4',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              //Rating progress indicator
              ARatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              ARatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              ARatingProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              ARatingProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              ARatingProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}

