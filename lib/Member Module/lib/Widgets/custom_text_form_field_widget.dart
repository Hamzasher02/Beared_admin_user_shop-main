
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final IconData icon;
  final IconData? icon1;
  final bool obscureText;
  final Validate;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({super.key,
    this.labelText,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.icon1,
    this.Validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: Validate ,
      obscureText: obscureText,
      decoration: InputDecoration(fillColor: AppColors.black38Colors,filled: true,
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.white38Colors,fontSize: 16.sp),
        hintText: hintText,
        hintStyle: TextStyle(
            color:AppColors.white38Colors,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
        ),
        errorBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: const BorderSide(color: Colors.transparent)) ,
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: const BorderSide(color: Colors.transparent)
        ),
        enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: const BorderSide(color: Colors.transparent)
        ),
        prefixIcon: Icon(icon,color: AppColors.whiteGrayColors),
        suffixIcon: Icon(icon1,color: AppColors.whiteGrayColors,),
      ),
    );
  }
}