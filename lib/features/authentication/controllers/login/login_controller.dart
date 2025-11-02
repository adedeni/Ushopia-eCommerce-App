import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ushopia/data/repositories/authentication/authentication_repository.dart';
import 'package:ushopia/features/personalization/controllers/user_controller.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/popups/full_screen_loader.dart';
import 'package:ushopia/utilities/popups/loaders.dart';

import '../../../../utilities/helpers/network_manager.dart';

class LoginController extends GetxController {
  ///Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text =
        localStorage.read('REMEMBER_ME_PASSWORD') ??
        ''; //you can choose not to store the password
    super.onInit();
  }

  ///Email and Password Login
  Future<void> emailAndPasswordLogin() async {
    try {
      //Start Loading
      AFullScreenLoader.openLoadingDialog(
        'Logging you in...',
        AImages.docerAnimation,
      );
      //Check Internet Connectivity
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!loginFormKey.currentState!.validate()) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login user using Email and Password Authentication
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //Remove Loader
      AFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      AFullScreenLoader.stopLoading();
      ALoaders.errorSnackBar(title: 'Error!', message: e.toString());
    }
  }

  ///Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      //Start Loading
      AFullScreenLoader.openLoadingDialog(
        'Logging you in...',
        AImages.docerAnimation,
      );

      //Check Internet Connectivity
      final isConnected = await ANetworkManager.instance.isConnected();
      if (!isConnected) {
        AFullScreenLoader.stopLoading();
        return;
      }

      //Google Authentication
      final userCredentials = await AuthenticationRepository.instance
          .signInWithGoogle();

      // Check if user cancelled the sign-in
      if (userCredentials == null) {
        ALoaders.warningSnackBar(
          title: 'Sign-in Cancelled',
          message: 'Google sign-in was cancelled. Please try again.',
        );
        return;
      }

      //Save User Record
      await userController.saveUserRecord(userCredentials);
      //Remove loader
      AFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      //Remove loader
      AFullScreenLoader.stopLoading();
      
      // Enhanced error logging
      // print('Google Sign-In Error Type: ${e.runtimeType}');
      // print('Google Sign-In Error Details: $e');
      
      if (e is FirebaseAuthException) {
        // print('Firebase Auth Error Code: ${e.code}');
        // print('Firebase Auth Error Message: ${e.message}');
        // print('Firebase Auth Error Details: ${e.toString()}');
        
        // Show a more specific error message based on the error code
        String errorMessage = 'Sign-in failed. Please try again.';
        if (e.code == 'sign_in_failed') {
          errorMessage = 'Google Sign-in failed. Please check your Google Play Services and try again.';
        } else if (e.code == 'network-request-failed') {
          errorMessage = 'Network error. Please check your internet connection.';
        } else if (e.code == 'operation-not-allowed') {
          errorMessage = 'Google Sign-in is not enabled. Please contact support.';
        }
        
        ALoaders.errorSnackBar(title: 'Authentication Error', message: errorMessage);
      } else {
        ALoaders.errorSnackBar(title: 'Error!', message: e.toString());
      }
    }
  }
}
