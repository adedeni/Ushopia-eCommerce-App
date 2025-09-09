import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:url_launcher/url_launcher.dart';
import '/features/authentication/screens/onboarding/onboarding_screen.dart';
import '/utilities/constants/text_strings.dart';
import '/utilities/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  
  static final Uri _productUri = Uri.parse('https://adedeni.com');

  // ignore: unused_element
  Future<void> _launchProductLink() async {
    if (!await launchUrl(_productUri, mode: LaunchMode.externalApplication)) {
      // handle error, e.g. show snackbar
      debugPrint('Could not launch $_productUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ATexts.appName,
      themeMode: ThemeMode.system,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
