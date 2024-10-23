import 'package:flutter/material.dart';

class PositionedText extends StatelessWidget {
  final double? width;
  final String label;
  final double? bottom;
  final double? top;
  final double? left;
  final double? right;
  final TextStyle style;

  final AlignmentGeometry? alignment;
  const PositionedText(
      {super.key,
      this.width,
      required this.label,
      this.bottom,
      this.left,
      this.right,
      this.top,
      this.alignment,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: const Duration(milliseconds: 30),
        bottom: bottom,
        top: top,
        left: left,
        right: right,
        child: Container(
          width: width,
          alignment: alignment,
          child: Text(
            label,
            style: style,
          ),
        ));
  }
}
