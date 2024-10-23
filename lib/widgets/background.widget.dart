import 'package:flutter/material.dart';
import 'package:sanatan/core/ui/ui.dart';

class Background extends StatelessWidget {
  final Widget? child;
  final bool welcome;
  const Background({super.key, required this.child, required this.welcome});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: welcome ? Colors.black : AppColors.backgroundColor,
        image: const DecorationImage(
          image: AssetImage('assets/images/bg_image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
