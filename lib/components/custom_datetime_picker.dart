import 'package:adoptive_calendar/adoptive_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:sanatan/constants/app_icons.dart';
import 'package:sanatan/core/ui/ui.dart';

class CustomDateTimePicker extends StatefulWidget {
  final int? maxLength;
  final Widget? leadingIcon;
  final double? height;
  final String? hintText;
  final TextEditingController? controller;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final bool? obscureText;
  final Function? onChanged;
  final Function? onPressed;
  final bool? dropDownVisibility;
  final bool? leadingIconVisibility;
  const CustomDateTimePicker(
      {super.key,
      this.maxLength,
      this.leadingIcon,
      this.height,
      this.hintText,
      this.controller,
      this.borderColor,
      this.errorColor,
      this.inputType,
      this.obscureText,
      this.onChanged,
      this.onPressed,
      this.dropDownVisibility,
      this.leadingIconVisibility});

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);
  DateTime pickedDate = DateTime.utc(1965, 1, 1);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    double height = 55;
    return Container(
        height: height,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        decoration: BoxDecoration(
            color: AppColors.textFieldColorBG,
            border: Border.all(),
            borderRadius: BorderRadius.circular(15)),
        child: GestureDetector(
          onTap: () async {
            pickedDate = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AdoptiveCalendar(
                  backgroundEffects: AdoptiveBackground.none,
                  iconColor: AppColors.primaryColor,
                  selectedColor: AppColors.primaryColor,
                  action: true,
                  minYear: 1965,
                  headingColor: Colors.white,
                  fontColor: Colors.white,
                  backgroundColor: AppColors.dialogBG,
                  initialDate: pickedDate,
                );
              },
            );
            setState(() {});
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
                height: 25,
              ),
              const ImageIcon(
                AssetImage(AppIcons.calendar),
                color: AppColors.grey,
              ),
              const SizedBox(
                width: 15,
                height: 25,
              ),
              Text(
                textAlign: TextAlign.start,
                DateFormat('yyyy-MM-dd – kk:mm').format(pickedDate).toString(),
                style: TextStyles.textfieldTextStyle,
              ),
              const SizedBox(
                width: 135,
                height: 25,
              ),
              SvgPicture.asset(AppIcons.downArrowIOSSVG)
            ],
          ),
        ));
  }
}
