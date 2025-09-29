import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ushopia/utilities/exceptions/firebase_exceptions.dart';
import 'package:ushopia/utilities/exceptions/format_exceptions.dart';
import 'package:ushopia/utilities/exceptions/platform_exceptions.dart';

import '../../../features/authentication/models/user/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  ///Function to save user data to firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
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

  ///Function to fetch user details base on user ID.
  ///Function to update user date in firestore
  ///Update any field in specific user collection
  ///
}
