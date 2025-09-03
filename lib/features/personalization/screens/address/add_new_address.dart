import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/common/widgets/buttons/gradient_elevated_buttons.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.user,
                      ),
                      labelText: 'Name'),
                ),
                SizedBox(
                  height: ASizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.mobile,
                      ),
                      labelText: 'Phone Number'),
                ),
                SizedBox(
                  height: ASizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.building_34,
                            ),
                            labelText: 'Street'),
                      ),
                    ),
                    SizedBox(
                      width: ASizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.code,
                            ),
                            labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ASizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.building,
                            ),
                            labelText: 'City'),
                      ),
                    ),
                    SizedBox(
                      width: ASizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.activity,
                            ),
                            labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ASizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.global,
                      ),
                      labelText: 'Country'),
                ),
                 SizedBox(
                  height: ASizes.defaultSpace,
                ),
                 SizedBox(
                  width: double.infinity,
                  child: AGradientElevatedButton(text: 'Save', onPressed: (){}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
