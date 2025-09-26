import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/popups/full_screen_loader.dart';
import 'package:ushopia/utilities/popups/loaders.dart';

import '../../../../utilities/helpers/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variables
  final email = TextEditingController(); //Controller for email input
  final lastName = TextEditingController(); //Controller for last name input
  final username = TextEditingController(); //Controller for username input
  final password = TextEditingController(); //Controller for password input
  final firstName = TextEditingController(); //Controller for first name input
  final phoneNumber =
      TextEditingController(); //Controller for phone number input

  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); //Form key for form validation

  ///SignUp
  Future<void> signup() async {
    try {
      ///Start loading
      AFullScreenLoader.openLoadingDialog(
        'Processing Information...',
        AImages.rollingLoader,
      );

      ///Check Internet connectivity
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      ///Form validations 
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      ///Privacy Policy check
      ///Register user in the firebase authentication and save user date in firebase
      ///Save authenticated user in the firebase firestore
      ///Show success message
      ///Move to verify email screen
      ///
    } catch (e) {
      //Show some generic error message to user
      ALoaders.errorSnackBar(title: 'Error', message: e.toString());
    } finally {
      //Remove loader
      AFullScreenLoader.stopLoading();
    }
  }
}
