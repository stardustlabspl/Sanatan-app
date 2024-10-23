import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/controllers/language.controller.dart';
import 'package:sanatan/core/utils/preferences.utils.dart';
import 'package:sanatan/screens/language/language_selection.screen.dart';
import 'package:sanatan/screens/welcome/welcome_screen.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String rootName = "/splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late LanguageController languageController;

  @override
  void initState() {
    languageController = Get.put(LanguageController(), permanent: true);
    initializeUser();
    super.initState();
  }

  initializeUser() async {
    String? token = await Preferences.getToken();
    bool? isNewUser = await Preferences.isNewUserCheck() ?? true;

    if (isNewUser) {
      Get.offAllNamed(LanguageSelectionScreen.rootName,
          arguments: {"isNewUser": true});
      return;
    }

    if (token != null) {}

    Get.offAllNamed(WelcomeScreen.rootName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppIcons.appLogo,
        ),
      ),
    );
  }
}
