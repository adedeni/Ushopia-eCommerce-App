import 'package:flutter/widgets.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
     top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            right: TSizes.defaultSpace
  );
}