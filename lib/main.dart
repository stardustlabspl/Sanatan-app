import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:sanatan/constants/string.dart';
import 'package:sanatan/core/localization/app_localization.dart';
import 'package:sanatan/core/routes/apppages.routes.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/splash/splash_screen.screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryDarkColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const Sanatan());
}

class Sanatan extends StatelessWidget {
  const Sanatan({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: AppStrings.appName,
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        initialRoute: SplashScreen.rootName,
        theme: AppTheme.lightTheme,
        defaultTransition: Transition.native,
        getPages: AppPages.pages);
  }
}
