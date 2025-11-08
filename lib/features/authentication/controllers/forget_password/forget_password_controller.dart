import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utilities/constants/image_strings.dart';
import '../../../../utilities/helpers/network_manager.dart';
import '../../../../utilities/popups/full_screen_loader.dart';
import '../../../../utilities/popups/loaders.dart';
import '../../screens/password_configuration/reset_password.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  ///Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  ///Send reset password email
  Future<void> sendPasswordResetEmail() async {
    try {
      //Start loading
      AFullScreenLoader.openLoadingDialog(
        'Processing your request',
        AImages.docerAnimation,
      );

      //Check internet connection
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //Form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email.text.trim(),
      );

      //Remove the loader
      AFullScreenLoader.stopLoading();

      //show success screen
      ALoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to reset your password'.tr,
      );

      //Redirect
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      //Remove loader
      AFullScreenLoader.stopLoading();
      ALoaders.errorSnackBar(title: 'Error!', message: e.toString());
    }
  }

  Future<void> resendPasswordResetEmail(String email) async {
    try {
      //Start loading
      AFullScreenLoader.openLoadingDialog(
        'Processing your request',
        AImages.docerAnimation,
      );

      //Check internet connection
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //Remove the loader
      AFullScreenLoader.stopLoading();

      //show success screen
      ALoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to reset your password'.tr,
      );
    } catch (e) {
      //Remove loader
      AFullScreenLoader.stopLoading();
      ALoaders.errorSnackBar(title: 'Error!', message: e.toString());
    }
  }
}
