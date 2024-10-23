import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/core/localization/app_localization.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/main.dart';
import 'package:sanatan/screens/customer/customer_base_class.controller.dart';
import 'package:sanatan/screens/customer/find/customer_find.screen.dart';
import 'package:sanatan/screens/customer/horoscope/customer_horoscope.screen.dart';
import 'package:sanatan/screens/customer/myPuja/customer_puja.screen.dart';
import 'package:sanatan/screens/customer/myRemedy/customer_MyRemedy.screen.dart';
import 'package:sanatan/screens/customer/myTalk/customer_MyTalk.screen.dart';
import 'package:sanatan/widgets/background.widget.dart';
import 'package:sanatan/widgets/bottomNavBar/customBottomNavBar.widget.dart';

class CustomerBaseScreen extends StatefulWidget {
  const CustomerBaseScreen({super.key});
  static const String rootName = "/customer_base_screen";

  @override
  State<CustomerBaseScreen> createState() => _CustomerBaseScreenState();
}

class _CustomerBaseScreenState extends State<CustomerBaseScreen> {
  int currentIndex = 0;
  late CustomerBaseClassController baseClassController;

  currentPage() {
    switch (baseClassController.currentIndex) {
      case 0:
        return const CustomerHoroscopeScreen();
      case 1:
        return const CustomerPujaScreen();
      case 2:
        return const CustomerFindScreen();
      case 3:
        return const CustomerMyTalkScreen();
      case 4:
        return const CustomerMyRemedyScreen();
      default:
        return const CustomerHoroscopeScreen();
    }
  }

  @override
  void initState() {
    baseClassController = Get.put(CustomerBaseClassController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      welcome: false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.transparent,
        body: GetBuilder<CustomerBaseClassController>(builder: (controller) {
          return currentPage();
        }),
        bottomNavigationBar:
            GetBuilder<CustomerBaseClassController>(builder: (controller) {
          return CustomBottomNavBar(items: [
            CustomBottomNavBarItem(
              currentIndex: controller.currentIndex,
              index: 0,
              activeIcon: AppIcons.horoscope,
              onTap: (index) => controller.onBottomNavigationChanged(index),
              label: "Horoscope",
            ),
            CustomBottomNavBarItem(
              currentIndex: controller.currentIndex,
              index: 1,
              activeIcon: AppIcons.myPuja,
              onTap: (index) => controller.onBottomNavigationChanged(index),
              label: "My Puja",
            ),
            CustomBottomNavBarItem(
              currentIndex: controller.currentIndex,
              index: 2,
              activeIcon: AppIcons.find,
              onTap: (index) => controller.onBottomNavigationChanged(index),
              label: "Find",
            ),
            CustomBottomNavBarItem(
              currentIndex: controller.currentIndex,
              index: 3,
              activeIcon: AppIcons.myTalk,
              onTap: (index) => controller.onBottomNavigationChanged(index),
              label: "My Talk",
            ),
            CustomBottomNavBarItem(
              currentIndex: controller.currentIndex,
              index: 4,
              activeIcon: AppIcons.myRemedy,
              onTap: (index) => controller.onBottomNavigationChanged(index),
              label: "My Remedy",
            ),
          ]);
        }),
      ),
    );
  }
}
