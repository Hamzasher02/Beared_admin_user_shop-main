import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Images/app_images.dart';
import '../App Constants/App Text/text.dart';

class CustomContainer extends StatelessWidget {
  final double h, w;
  final String title;
  final String image;
  final void Function()? onTap;

  const CustomContainer(
      {Key? key, required this.h, required this.w, required this.title, required this.image, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            color: AppColors.dialogBoxColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15.w, vertical: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 25.h,
                  width: 25.w,
                  child: Image.asset(image, fit: BoxFit.cover,)),
              Text14(text: title, textColor: AppColors.primaryText,)
            ],
          ),
        ),
      ),
    );
  }
}
