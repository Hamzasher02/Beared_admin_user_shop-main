
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Fonts/app_fonts.dart';

class SmallButton extends StatelessWidget {
  final double height;
  final double width;
  final String? title;
  final IconData? icon;
  final Function() onTap;
  final Color textColor, buttonColor, iconColor;
  const SmallButton(
      {Key? key,
      required this.height,
      required this.width,
      this.title,
      this.icon,
      required this.onTap,
      required this.textColor, required this.buttonColor, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: iconColor, size: 20),
              SizedBox(width: 8.w,),
              Text(title!,
                  style: TextStyle(
                    fontFamily: AppFonts.nunitoSemiBold,
                    fontSize: 14.sp,
                    color: textColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
