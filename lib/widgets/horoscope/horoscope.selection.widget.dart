import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sanatan/core/ui/ui.dart';
import 'package:sanatan/screens/customer/horoscope/customer_horoscope.controller.dart';
import 'package:sanatan/widgets/cards/horoscope/horoscope.card.dart';

class HoroscopeSelector extends StatelessWidget {
  final List<HoroscopeCard> items;
  const HoroscopeSelector({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.transparent,
        width: 250,
        height: 150,
        alignment: Platform.isIOS ? Alignment.topCenter : Alignment.center,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              color: AppColors.transparent,
              child: HoroscopeCard(
                  assetName: items[index].assetName,
                  currentIndex: items[index].currentIndex,
                  index: items[index].index,
                  onTap: (index) {}),
            );
          },
          itemCount: items.length,
        ));
  }
}
