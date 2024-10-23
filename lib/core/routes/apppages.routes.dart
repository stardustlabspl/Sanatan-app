import 'package:get/route_manager.dart';
import 'package:sanatan/screens/customer/customer_base.screen.dart';
import 'package:sanatan/screens/customer/find/customer_find.screen.dart';
import 'package:sanatan/screens/customer/horoscope/customer_horoscope.screen.dart';
import 'package:sanatan/screens/customer/myPuja/customer_puja.screen.dart';
import 'package:sanatan/screens/customer/myRemedy/customer_MyRemedy.screen.dart';
import 'package:sanatan/screens/customer/myTalk/customer_MyTalk.screen.dart';
import 'package:sanatan/screens/customer/signUp/signup.customer.screen.dart';
import 'package:sanatan/screens/customer/signUp/signup.customer.screen.verification.dart';
import 'package:sanatan/screens/language/language_selection.screen.dart';
import 'package:sanatan/screens/signin/signin.screen.dart';
import 'package:sanatan/screens/splash/splash_screen.screen.dart';
import 'package:sanatan/screens/welcome/welcome_screen.screen.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: SplashScreen.rootName,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: LanguageSelectionScreen.rootName,
      page: () => const LanguageSelectionScreen(),
    ),
    GetPage(
      name: WelcomeScreen.rootName,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: UserSignInScreen.rootName,
      page: () => const UserSignInScreen(),
    ),
    GetPage(
      name: CustomerSignUPScreen.rootName,
      page: () => const CustomerSignUPScreen(),
    ),
    GetPage(
      name: SignUPVerificationScreen.rootName,
      page: () => const SignUPVerificationScreen(),
    ),
    GetPage(
      name: CustomerBaseScreen.rootName,
      page: () => const CustomerBaseScreen(),
    ),
    GetPage(
      name: CustomerFindScreen.rootName,
      page: () => const CustomerFindScreen(),
    ),
    GetPage(
      name: CustomerHoroscopeScreen.rootName,
      page: () => const CustomerHoroscopeScreen(),
    ),
    GetPage(
      name: CustomerMyRemedyScreen.rootName,
      page: () => const CustomerMyRemedyScreen(),
    ),
    GetPage(
      name: CustomerPujaScreen.rootName,
      page: () => const CustomerPujaScreen(),
    ),
    GetPage(
      name: CustomerMyTalkScreen.rootName,
      page: () => const CustomerMyTalkScreen(),
    ),
  ];
}
