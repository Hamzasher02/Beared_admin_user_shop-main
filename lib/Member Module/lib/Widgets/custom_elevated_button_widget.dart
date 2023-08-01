
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final ButtonStyle? style; // Add ButtonStyle property

  const CustomElevatedButton({super.key,
    required this.onPressed,
    required this.label,
    this.style,
  }); // Update constructor

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: 60.h,width: 378.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600
          ),
          backgroundColor: AppColors.purpleAccentColors, //background color of button
          //elevation of button
          shape: RoundedRectangleBorder(//to set border radius to button
              borderRadius: BorderRadius.circular(20.r)
          ),
        ),
        child: Text(label,style: TextStyle(color: Colors.white),), // Set the style property
      ),
    );
  }
}
