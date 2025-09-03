import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/utilities/constants/colors.dart';

import '../../../../utilities/constants/sizes.dart';
import 'add_new_address.dart';
import 'widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AColors.primary,
        onPressed: () => Get.to(
          () => AddNewAddress(),
        ),
        child: Icon(
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
              ASingleAddress(selectedAddress: true,)
            ],
          ),
        ),
      ),
    );
  }
}

