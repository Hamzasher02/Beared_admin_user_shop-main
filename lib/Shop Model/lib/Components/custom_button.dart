
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const CustomButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onPress,
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(20)),
        child:  Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3, color: AppColors.primaryText)
                : Text16White(text: title)),
      ),
    );
  }
}
