
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ReUseRowWidgets extends StatelessWidget {
  final String title;
  final String name;
  final IconData icon;
  const ReUseRowWidgets({Key? key,
    required this.title ,
    required this.name,
    required this.icon,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
        style: TextStyle(
          color: AppColors.white38Colors,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500
        ),
        ),
        SizedBox(width: 30.w,),
        Text(name,
          style: TextStyle(
              color: AppColors.white60Colors,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500
          ),
        ),
        Icon(icon ,size: 20.sp,color: AppColors.white38Colors),
      ],
    );
  }
}
