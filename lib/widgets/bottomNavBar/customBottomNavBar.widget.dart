import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanatan/core/ui/ui.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List<Widget> items;
  const CustomBottomNavBar({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.transparent,
      height: Platform.isIOS ? 80 : 65,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Platform.isIOS ? Alignment.topCenter : Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items,
      ),
    );
  }
}

class CustomBottomNavBarItem extends StatelessWidget {
  final int currentIndex;
  final int index;
  final String activeIcon;
  final String? label;
  final String? type;
  final Function onTap;

  const CustomBottomNavBarItem(
      {super.key,
      required this.currentIndex,
      required this.index,
      required this.activeIcon,
      this.label,
      this.type = 'svg',
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        onTap: () {
          onTap.call(index);
        },
        splashColor: AppColors.backgroundColor.withAlpha(50),
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          width: 70,
          height: 60,
          child: Column(
            children: [
              // ignore: deprecated_member_use
              type != "image"
                  ? SvgPicture.asset(
                      activeIcon,
                      height: 25,
                      // ignore: deprecated_member_use
                      color: currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.grey,
                    )
                  : Image.asset(
                      activeIcon,
                      height: 22,
                      width: 22,
                    ),

              const SizedBox(
                width: 5,
              ),
              !["", null].contains(label)
                  ? Text(
                      label!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.defaultText2.copyWith(
                          fontSize: 12,
                          color: currentIndex == index
                              ? AppColors.primaryColor
                              : AppColors.grey),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
