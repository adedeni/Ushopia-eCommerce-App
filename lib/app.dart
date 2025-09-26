import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ushopia/bindings/general_binding.dart';
import 'package:ushopia/utilities/constants/colors.dart';
import '/utilities/constants/text_strings.dart';
import '/utilities/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final Uri _productUri = Uri.parse('https://adedeni.com');

  // ignore: unused_element
  Future<void> _launchProductLink() async {
    if (!await launchUrl(_productUri, mode: LaunchMode.externalApplication)) {
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
      initialBinding: GeneralBinding(),
      //Loader or circular progress indicator
      //home: const OnboardingScreen(),
      home: const Scaffold(
        backgroundColor: AColors.primary,
        body: Center(child: CircularProgressIndicator(color: AColors.white)),
      ),
    );
  }
}
