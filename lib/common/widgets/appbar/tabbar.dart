import 'package:flutter/material.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import 'package:ushopia/utilities/device/device_utility.dart';
import 'package:ushopia/utilities/helpers/helper_functions.dart';

class ATabbar extends StatelessWidget implements PreferredSizeWidget {
  ///
  const ATabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final darkMode = AHelperFunctions.isDarkMode(context);
    return Material(
      //This will enable us to add background color to tabs, and to achieve this PreferredSizeWidget is needed
      color: darkMode ? AColors.black : AColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start, //this is necessary to remove the padding at the beginning of the tab
        indicatorColor: AColors.primary,
        labelColor: darkMode ? AColors.white : AColors.primary,
        unselectedLabelColor: AColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}
