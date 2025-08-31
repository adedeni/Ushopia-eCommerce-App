import 'package:flutter/material.dart';
import 'package:ushopia/common/widgets/appbar/appbar.dart';
import 'package:ushopia/common/widgets/images/circular_image.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/sizes.dart';

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
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
