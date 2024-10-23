import 'package:flutter/material.dart';
import 'package:sanatan/core/ui/ui.dart';

class UserProfileImage extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  const UserProfileImage(
      {super.key, this.image, this.width = 20, this.height = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.greyMedium),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.transparent),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(image!),
      ),
    );
  }
}
