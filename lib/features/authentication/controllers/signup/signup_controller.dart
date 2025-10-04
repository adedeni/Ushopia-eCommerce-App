import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopia/data/repositories/authentication/authentication_repository.dart';
import 'package:ushopia/data/repositories/user/user_repository.dart';
import 'package:ushopia/features/authentication/screens/signup/verify_email.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/popups/full_screen_loader.dart';
import 'package:ushopia/utilities/popups/loaders.dart';

import '../../../../utilities/helpers/network_manager.dart';
import '../../models/user/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variables
  final hidePassword = true.obs; //Observable for hiding/showing password
  final privacyPolicy = true.obs; //Observable for privacy policy checkbox
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
  void signup() async {
    try {
      ///Start loading
      AFullScreenLoader.openLoadingDialog(
        'Processing Information...',
        AImages.docer,
      );

      ///Check Internet connectivity
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        //Remove loader
        AFullScreenLoader.stopLoading();
        return;
      }

      ///Form validations
      if (!signupFormKey.currentState!.validate()) {
        //Remove loader
        AFullScreenLoader.stopLoading();
        return;
      }

      ///Privacy Policy check
      if (!privacyPolicy.value) {
        ALoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      ///Register user in the firebase authentication and save user date in firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      ///Register User in the firebase authentication and Save authenticated user in the firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      //Remove loader
      AFullScreenLoader.stopLoading();

      ///Show success message
      ALoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue.',
      );

      ///Move to verify email screen
      Get.to(() =>  VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      //Remove loader
      AFullScreenLoader.stopLoading();
      //Show some generic error message to user
      ALoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
