import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ushopia/common/widgets/success_screen/success_screen.dart';
import 'package:ushopia/data/repositories/authentication/authentication_repository.dart';
import 'package:ushopia/utilities/constants/image_strings.dart';
import 'package:ushopia/utilities/constants/text_strings.dart';
import 'package:ushopia/utilities/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///Send Email whenever verify screen appears and set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  ///Send Email Verification Link
  Future<void> sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      ALoaders.successSnackBar(
        title: 'Email Sent!',
        message: 'Please check your inbox and verify your email.',
      );
    } catch (e) {
      ALoaders.errorSnackBar(title: 'Error!', message: e.toString());
    }
  }

  ///Timer to automatically redirect on email verification
  void setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        //This is for when user is verified through mail
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: AImages.successfullyRegisterAnimation,
            title: ATexts.yourAccountCreatedTitle,
            subtitle: ATexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  ///Manually Check if Email is Verified
  void checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: AImages.successfullyRegisterAnimation,
          title: ATexts.yourAccountCreatedTitle,
          subtitle: ATexts.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}
