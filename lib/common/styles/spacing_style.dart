import 'package:flutter/widgets.dart';
import '/utilities/constants/sizes.dart';

class ASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
     top: ASizes.appBarHeight,
            left: ASizes.defaultSpace,
            bottom: ASizes.defaultSpace,
            right: ASizes.defaultSpace
  );
}