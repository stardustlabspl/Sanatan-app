import 'package:flutter/material.dart';
import 'package:sanatan/core/ui/ui.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Color textColor;
  final Function()? onPressed;
  final bool loading;
  const ActionButton({
    super.key,
    required this.label,
    this.buttonColor = AppColors.primaryColor,
    this.textColor = AppColors.textColor,
    this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      color: buttonColor,
      elevation: 0,
      splashColor: AppColors.transparent,
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: loading
          ? Transform.scale(
              scale: 0.5,
              child: const CircularProgressIndicator(color: AppColors.white),
            )
          : Text(
              label,
              style: TextStyles.defaultText.copyWith(
                color: textColor,
              ),
            ),
    );
  }
}
