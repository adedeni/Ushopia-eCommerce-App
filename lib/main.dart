import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app.dart';
import 'firebase_options.dart';

//The App Entry Point
Future<void> main() async {
  //Todo: Add Widgets Binding
  //Todo: Init Local Storage
  //Todo: Await Native Splash
  // Firebase Initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  //Todo: Initialize Authentication
  runApp(const App());
}

class AuthenticationRepository {}
