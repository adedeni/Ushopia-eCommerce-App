import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ushopia/features/authentication/screens/login/login.dart';
import 'package:ushopia/features/authentication/screens/signup/verify_email.dart';
import 'package:ushopia/navigation_menu.dart';
import 'package:ushopia/utilities/exceptions/firebase_auth_exceptions.dart';
import 'package:ushopia/utilities/exceptions/firebase_exceptions.dart';
import 'package:ushopia/utilities/exceptions/format_exceptions.dart';
import 'package:ushopia/utilities/exceptions/platform_exceptions.dart';

import '../../../features/authentication/screens/onboarding/onboarding_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  ///Called from main.dart on app launch
  @override
  void onReady() {
    //This is to remove the native splash screen
    FlutterNativeSplash.remove();
    //this redirect to the appropriate screen
    screenRedirect();
  }

  ///Function to show relevant screens
  void screenRedirect() async {
    //Local Storage
    // if (kDebugMode) {
    //   print('========GET STORAGE Auth Repo=========');
    //   print(deviceStorage.read('virgin'));
    // }
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      //check if it is the first time launching the app
      deviceStorage.writeIfNull('virgin', true);
      deviceStorage.read('virgin') != true
          ? Get.offAll(
              () => const LoginScreen(),
            ) //If not first time redirect to login screen
          : Get.offAll(
              () => const OnboardingScreen(),
            ); //if first time redirect to onboarding screen
    }
  }

  /*------------------------Email and Password Sign-in----------------------------------*/
  ///Email Authentication - SignIn

  ///Email Authentication - Register
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AFormatException();
    } on PlatformException catch (e) {
      throw APlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///Email Verification - Mail Verification

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const AFormatException();
    } on PlatformException catch (e) {
      throw APlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///ReAuthenticate - ReAuthenticate User

  ///Email Authentication - Forget Password

  /*------------------------Federated Identity and Social Sign-in----------------------------------*/
  ///Google Authentication - Google SignIn

  ///Facebook Authentication - Facebook SignIn

  /*------------------------Logout and Delete Account----------------------------------*/

  ///Logout User - Valid for any Authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw AFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AFormatException();
    } on PlatformException catch (e) {
      throw APlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  ///Delete User - Remove user Auth and Firestore account
}
