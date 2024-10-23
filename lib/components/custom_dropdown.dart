import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/core/ui/ui.dart';

class CustomDropDown extends StatefulWidget {
  final List? itemlist;
  final Widget? leadingIcon;
  final double? height;
  final Function? onChanged;
  const CustomDropDown({
    super.key,
    this.height,
    this.leadingIcon,
    this.onChanged,
    this.itemlist,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    var selectedItem = widget.itemlist?[0];
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
          Expanded(
            child: DropdownButtonFormField<dynamic>(
              alignment: Alignment.center,
              value: selectedItem,
              isExpanded: true,
              hint: Text(
                "Select",
                style: TextStyles.textfieldHintStyle,
              ),
              focusColor: AppColors.white,
              icon: SvgPicture.asset(AppIcons.downArrowIOSSVG),
              items: widget.itemlist?.map((dynamic value) {
                return DropdownMenuItem<dynamic>(
                  value: value,
                  child: Text(
                    value.toString(),
                    style: TextStyles.textfieldTextStyle,
                  ),
                );
              }).toList(),
              decoration: InputDecoration(
                prefixIconColor: AppColors.grey,
                prefixIcon: widget.leadingIcon,
                filled: true,
                fillColor: AppColors.transparent,
                isDense: true,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
