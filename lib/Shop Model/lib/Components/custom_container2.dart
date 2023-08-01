import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../App Constants/App Colors/app_colors.dart';

class CustomContainer2 extends StatelessWidget {
  final double h, w;
  final Widget? child;
  const CustomContainer2({Key? key, required this.h, required this.w, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          color: AppColors.dialogBoxColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: child,
    );
  }
}
