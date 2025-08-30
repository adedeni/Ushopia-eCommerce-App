import 'package:flutter/material.dart';
import '/common/widgets/custom_shapes/containers/circular_container.dart';

import '/utilities/constants/colors.dart';
import '../curve_edges/curve_edges_widget.dart';

class APrimaryHeaderContainer extends StatelessWidget {
  const APrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACurveEdgesWidget(
      child: Container(
        color: AColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
      
        ///If [size.isFinite: is not true.in Stock] error occurred;
        child: Stack(
          children: [
            //Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
            
          ],
        ),
      ),
    );
  }
}
