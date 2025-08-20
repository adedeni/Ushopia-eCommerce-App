import 'package:flutter/material.dart';
import 'package:ushopia/utils/theme/theme.dart';

//The App Entry Point
void main() {

  //Todo: Add Widgets Binding
  //Todo: Init Local Storage
  //Todo: Await Native Splash
  //Todo: Initialize Firebase
  //Todo: Initialize Authentication
  runApp(const App());
}
/// Use this Class to setup themes, initial Bindings, any animations, etc
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      //Light theme codes
      theme: TAppTheme.lightTheme,
      //dark theme codes
      darkTheme: TAppTheme.darkTheme,
      home:const App(),
    );
  }
}