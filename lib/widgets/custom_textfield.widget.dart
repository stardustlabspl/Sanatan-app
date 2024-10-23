import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phonecodes/phonecodes.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/core/ui/ui.dart';

class CustomTextfield extends StatefulWidget {
  final int? maxLength;
  final Widget? leadingIcon;
  final double? height;
  final String? hintText;
  final String? value;
  final TextEditingController? controller;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final bool? obscureText;
  final bool? enabled;
  final Function? onChanged;
  final Function? onPressed;
  final bool? dropDownVisibility;
  final bool? leadingIconVisibility;

  const CustomTextfield(
      {super.key,
      this.height,
      this.leadingIcon,
      this.hintText,
      this.controller,
      this.errorColor,
      this.inputType,
      this.obscureText,
      this.onChanged,
      this.borderColor,
      this.dropDownVisibility,
      this.maxLength,
      this.leadingIconVisibility,
      this.onPressed,
      this.enabled,
      this.value});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  Country _selectedCountry = Country.india;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
        height: widget.height,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        decoration: BoxDecoration(
            color: AppColors.textFieldColorBG,
            border: Border.all(),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: (widget.dropDownVisibility ?? false) ? 85 : 0,
                child: Visibility(
                    visible: widget.dropDownVisibility ?? false,
                    child: DropdownButtonFormField<Country>(
                      value: _selectedCountry,
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                      hint: Text(
                        "Select",
                        style: TextStyles.textfieldHintStyle,
                      ),
                      focusColor: AppColors.textFieldHintColor,
                      icon: SvgPicture.asset(AppIcons.downArrowIOSSVG),
                      items: Countries.list
                          .map<DropdownMenuItem<Country>>((Country value) {
                        return DropdownMenuItem<Country>(
                          value: value,
                          child: Text(
                            "${value.flag}    ${value.dialCode}",
                            style: TextStyles.textfieldTextStyle,
                          ),
                        );
                      }).toList(),
                      onChanged: (country) {
                        // ToDo Change the leading Icon with selected country code here
                        // put country icon in leadingIcon variable
                        setState(() {
                          _selectedCountry = country!;
                        });
                      },
                    ))),
            Expanded(
              child: TextFormField(
                initialValue: widget.value,
                obscureText: widget.obscureText ?? false,
                maxLength: widget.maxLength,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: widget.inputType ?? TextInputType.text,
                textAlign: TextAlign.start,
                style: TextStyles.textfieldTextStyle,
                onTap: () {
                  widget.onPressed;
                },
                decoration: InputDecoration(
                    enabled: widget.enabled ?? true,
                    prefixIconColor: AppColors.grey,
                    prefixIcon: widget.leadingIcon,
                    // prefixIconConstraints:
                    //     const BoxConstraints(minWidth: 30, minHeight: 20),
                    filled: true,
                    fillColor: AppColors.transparent,
                    isDense: true,
                    hintStyle: TextStyles.textfieldHintStyle,
                    hintText: widget.hintText ?? "Please Enter Here",
                    border: InputBorder.none),
              ),
            ),
          ],
        ));
  }
}
