import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanatan/core/ui/ui.dart';

class OtpBox extends StatefulWidget {
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final String? hintText;
  final TextEditingController controller;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final bool? obscureText;
  final Function onChanged;
  final bool? visibility;
  const OtpBox({
    super.key,
    this.hintText,
    required this.controller,
    this.borderColor,
    this.errorColor,
    this.inputType,
    this.obscureText,
    required this.onChanged,
    this.visibility,
    this.nextFocusNode,
    this.currentFocusNode,
  });

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

class _OtpBoxState extends State<OtpBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 20,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 2),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: AppColors.textFieldColorBG,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          keyboardType: widget.inputType ?? TextInputType.text,
          textAlign: TextAlign.center,
          style: TextStyles.textfieldTextStyle,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ],
          focusNode: widget.currentFocusNode,
          onChanged: (value) {
            if (widget.nextFocusNode == null) {
              return;
            }
            widget.nextFocusNode?.requestFocus();
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              filled: true,
              fillColor: AppColors.transparent,
              isDense: true,
              hintStyle: TextStyles.textfieldHintStyle,
              hintText: widget.hintText ?? "Please Enter Here",
              border: InputBorder.none),
        ));
  }
}
