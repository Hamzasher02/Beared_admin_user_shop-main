import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Fonts/app_fonts.dart';
import '../App Constants/App Text/text.dart';

class CustomDropdown extends StatelessWidget {
  final void Function(Object?) onChanged;

  final List<String> items;
  final String selectedItem;
  // final ValueChanged<String> onChanged;

  const CustomDropdown({
    Key? key,
    required this.onChanged,
    required this.items,
    required this.selectedItem,
  }) : super(key: key);
  static List<String> days = [
    "Monday to Friday",
    "Monday to Saturday",
    "Full Week"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.textFieldColor,
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: DropdownButton(
            underline: Container(),
            value: selectedItem,
            menuMaxHeight: 300,
            hint: const Text16Medium(text: 'Select Days'),
            dropdownColor: AppColors.dialogBoxColor,
            elevation: 5,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 25,
            isExpanded: true,
            onChanged: onChanged,
            items: days.map((value) {
              return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontFamily: AppFonts.nunitoRegular,
                        fontSize: 16.sp,
                        color: AppColors.primaryText),
                  ));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
