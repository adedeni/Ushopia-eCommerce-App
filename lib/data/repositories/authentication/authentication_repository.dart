import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ushopia/features/authentication/screens/login/login.dart';

import '../../../features/authentication/screens/onboarding/onboarding_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///Variables
  final deviceStorage = GetStorage();

  ///Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///Function to show relevant screens
  Future<void> screenRedirect() async {
    //Local Storage
    if (kDebugMode) {
      print('========GET STORAGE Auth Repo=========');
      print(deviceStorage.read('virgin'));
    }
    deviceStorage.writeIfNull('virgin', true);
    deviceStorage.read('virgin') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }

  /*------------------------Email and Password Sign-in----------------------------------*/
  ///Email Authentication - SignIn

  ///Email Authentication - Register

  ///ReAuthenticate - ReAuthenticate User

  ///Email Verification - Mail Verification

  ///Email Authentication - Forget Password

  /*------------------------Federated Identity and Social Sign-in----------------------------------*/
  ///Google Authentication - Google SignIn

  ///Facebook Authentication - Facebook SignIn

  /*------------------------Logout and Delete Account----------------------------------*/

  ///Logout User - Valid for any Authentication

  ///Delete User - Remove user Auth and Firestore account
}
