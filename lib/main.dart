import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //Register dependencies
  Get.put(AuthenticationRepository());

  runApp(const App());
}

class AuthenticationRepository {}

// Firebase Initialization await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform, ).then((FirebaseApp value) => Get.put(AuthenticationRepository())); //Todo: Initialize Authentication runApp(const App()); }
