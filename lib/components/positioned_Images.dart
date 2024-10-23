import 'package:flutter/material.dart';

class PositionedImage extends StatelessWidget {
  final double? width;
  final String image;
  final double? bottom;
  final double? top;
  final double? left;
  final double? right;
  final double? fontSize;
  final String? font;
  final AlignmentGeometry? alignment;
  const PositionedImage(
      {super.key,
      this.width,
      required this.image,
      this.bottom,
      this.left,
      this.right,
      this.top,
      this.fontSize,
      this.font,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      top: top,
      left: left,
      right: right,
      child: Container(width: width, child: Image.asset(image)),
    );
  }
}
