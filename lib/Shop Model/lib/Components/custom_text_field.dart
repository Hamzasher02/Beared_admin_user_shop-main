import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Fonts/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator? onValidator;
  final VoidCallback? onTap;
  final TextStyle? fontStyle;

  final TextInputType keyBoardType;
  final String? hint;
  final String? errorText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? enable;
  final bool autoFocus;
  final Function(String)? onChange;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.focusNode,
      required this.onFieldSubmittedValue,
        this.onTap,
        this.errorText,
      required this.keyBoardType,
      required this.obscureText,
       this.onChange,
      this.hint,
        this.fontStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.enable,
        this.onValidator,
      this.autoFocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmittedValue,
          validator: onValidator,
         onChanged: onChange,
          enabled: enable,
          onTap: onTap,
          keyboardType: keyBoardType,
          cursorColor: AppColors.primaryText,
          style: TextStyle(color: AppColors.primaryText),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: AppColors.iconColor,
            suffixIconColor: AppColors.iconColor,
            hintText: hint,
            errorText: errorText,
            hintStyle: TextStyle(color: AppColors.hintText, fontFamily: AppFonts.nunitoRegular),
            contentPadding: const EdgeInsets.all(15),
            border: InputBorder.none,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                BorderSide(color: AppColors.errorColor, width: 1)),
          ),
        ),
      ),
    );
  }
}
