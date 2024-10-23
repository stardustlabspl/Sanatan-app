import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanatan/core/ui/ui.dart';

class HoroscopeCard extends StatelessWidget {
  final String assetName;
  final int currentIndex;
  final int index;
  final Function onTap;
  const HoroscopeCard(
      {super.key,
      required this.assetName,
      required this.currentIndex,
      required this.index,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap.call(index);
      },
      child: Container(
        alignment: Alignment.center,
        height: 145.84,
        width: 145.84,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: currentIndex == index
                    ? <Color>[AppColors.gradientBlue, AppColors.gradientPurple]
                    : <Color>[Colors.white, Colors.white])),
        child: SvgPicture.asset(assetName,
            colorFilter: currentIndex == index
                ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                : const ColorFilter.mode(
                    Colors.transparent, BlendMode.saturation)),
      ),
    );
  }
}
