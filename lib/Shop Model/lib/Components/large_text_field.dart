import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Fonts/app_fonts.dart';

class LargeTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator? onValidator;
  final VoidCallback? onTap;
  final TextStyle? fontStyle;
  final int? maxLines;

  final TextInputType keyBoardType;
  final String? hint;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? enable;
  final bool autoFocus;

  const LargeTextField(
      {Key? key,
        required this.controller,
        required this.focusNode,
        required this.onFieldSubmittedValue,
        this.onTap,
        required this.keyBoardType,
        required this.obscureText,
        this.hint,
        this.fontStyle,
        this.maxLines,
        this.prefixIcon,
        this.suffixIcon,
        this.enable,
        this.onValidator,
        this.autoFocus = false, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: 180.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.textFieldColor,
            borderRadius: BorderRadius.circular(18)
        ),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmittedValue,
          validator: onValidator,
          enabled: enable,
          onTap: onTap,
          maxLines: maxLines,
          keyboardType: keyBoardType,
          cursorColor: AppColors.whiteColor,
          style: TextStyle(color: AppColors.whiteColor),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.hintText, fontFamily: AppFonts.nunitoRegular),
            border: InputBorder.none,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                BorderSide(color: AppColors.errorColor, width: 1)),
          ),
        ),
      ),
    );
  }
}
