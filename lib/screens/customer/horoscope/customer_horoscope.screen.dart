import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/customer/horoscope/customer_horoscope.controller.dart';
import 'package:sanatan/widgets/cards/horoscope/horoscope.card.dart';
import 'package:sanatan/widgets/horoscope/horoscope.selection.widget.dart';
import 'package:sanatan/widgets/profile/profile_image.widget.dart';

class CustomerHoroscopeScreen extends StatefulWidget {
  static const String rootName = "/customer_horoscope_screen";

  const CustomerHoroscopeScreen({super.key});

  @override
  State<CustomerHoroscopeScreen> createState() =>
      _CustomerHoroscopeScreenState();
}

class _CustomerHoroscopeScreenState extends State<CustomerHoroscopeScreen> {
  int currentIndex = 0;
  late CustomerHoroscopeController horoscopeScreenController;
  final List<HoroscopeCard> items = [
    HoroscopeCard(
        assetName: AppIcons.aries,
        currentIndex: CustomerHoroscopeController().currentIndex,
        index: 0,
        onTap: () {}),
    HoroscopeCard(
        assetName: AppIcons.aries,
        currentIndex: CustomerHoroscopeController().currentIndex,
        index: 1,
        onTap: () {}),
    HoroscopeCard(
        assetName: AppIcons.aries,
        currentIndex: CustomerHoroscopeController().currentIndex,
        index: 2,
        onTap: () {}),
    HoroscopeCard(
        assetName: AppIcons.aries,
        currentIndex: CustomerHoroscopeController().currentIndex,
        index: 3,
        onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: UserProfileImage(
            height: 30,
            width: 30,
            image: AppIcons.appLogo,
          ),
        ),
        title: Text(
          "Hello, Jake!",
          style: TextStyles.whiteHeading2,
          textAlign: TextAlign.start,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\$ 0.00",
              style: TextStyles.defaultTextBold,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppIcons.wallet),
          ),
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.start,
              "Horoscope",
              style: TextStyles.bodyTextBig,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
                color: Colors.transparent,
                width: 400,
                height: 200,
                child: HoroscopeSelector(items: items))
          ]),
    );
  }
}



// [
//                 GetBuilder<CustomerHoroscopeController>(builder: (controller) {
//                   return HoroscopeSelector(items: [
//                     HoroscopeCard(
//                         assetName: AppIcons.sagittarius,
//                         currentIndex: horoscopeScreenController.currentIndex,
//                         index: 0,
//                         onTap: (index) =>
//                             {controller.onselectionChanged(index)}),
//                     HoroscopeCard(
//                         assetName: AppIcons.sagittarius,
//                         currentIndex: horoscopeScreenController.currentIndex,
//                         index: 1,
//                         onTap: (index) =>
//                             {controller.onselectionChanged(index)}),
//                   ]);
//                 })
//               ],
