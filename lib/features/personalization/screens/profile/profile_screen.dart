import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '/common/widgets/appbar/appbar.dart';
import '/common/widgets/images/circular_image.dart';
import '/common/widgets/texts/section_heading.dart';
import '/utilities/constants/image_strings.dart';
import '/utilities/constants/sizes.dart';

import 'widgets/profile_menu_tiles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///App bar
      appBar: AAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              ///Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ACircularImage(
                      image: AImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              ///Profile Details
              SizedBox(height: ASizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: ASizes.spaceBtwItems / 2),
              ASectionHeading(
                title: 'Profile Details',
                showActionButton: false,
              ),
              SizedBox(height: ASizes.spaceBtwItems),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'Name',
                value: 'Olayode Adeshina',
              ),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'Username',
                value: 'Adedeni',
              ),

              ///Bio Data
              SizedBox(height: ASizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: ASizes.spaceBtwItems / 2),
              ASectionHeading(
                title: 'Bio Data',
                showActionButton: false,
              ),
              SizedBox(height: ASizes.spaceBtwItems),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'User ID',
                value: 'UI9195',
                icon: Iconsax.copy,
              ),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'E-mail',
                value: 'adedeni@icloud.com',
              ),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'Phone Number',
                value: '09036176161',
              ),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              AProfileMenuTiles(
                onPressed: () {},
                title: 'Date of Birth',
                value: '14th, August',
              ),
              Divider(),
              SizedBox(
                height: ASizes.spaceBtwItems,
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    
                      onPressed: () {},
                      child: Text(
                        'Delete Account',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
