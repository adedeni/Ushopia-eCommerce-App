import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/utilities/constants/colors.dart';

import '../../../../common/widgets/buttons/floating_action_button_with_gradient.dart';
import '../../../../utilities/constants/sizes.dart';
import 'add_new_address.dart';
import 'widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AGradientFloatingActionButton(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(ASizes.buttonRadius),
        ), // Shape is circular by default but can be change to the following shapes, RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),) //StadiumBorder(), //BeveledRectangleBorder() //ContinuousRectangleBorder()
        onPressed: () => Get.to(
          () => AddNewAddress(),
        ),
        child: const Icon(
          Iconsax.add,
          color: AColors.white,
        ),
      ),
      appBar: AAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              ASingleAddress(
                selectedAddress: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
