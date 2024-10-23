import 'package:flutter/material.dart';
import 'package:sanatan/core/ui/ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.margin = const EdgeInsets.symmetric(horizontal: 30),
    this.height = 47,
    this.width = double.infinity,
    this.onPressed,
    this.textColor,
    this.textSize = 16,
    this.leadingChild,
    this.trailingChild,
  });
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final double textSize;
  final Widget? trailingChild;
  final Widget? leadingChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            fixedSize: Size(width, height),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(left: leadingChild == null ? 0.0 : 10),
            child: leadingChild,
          ),
          Text(text,
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: textColor ?? AppColors.textColor,
                  fontSize: textSize)),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
              height: 15,
              width: 15,
              child: trailingChild ?? const SizedBox.shrink()),
        ]),
      ),
    );
  }
}
