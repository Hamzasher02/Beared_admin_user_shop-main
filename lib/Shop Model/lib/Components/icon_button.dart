
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Fonts/app_fonts.dart';

class MyIconButton extends StatelessWidget {
  final double height;
  final double width;

  final IconData? icon;
  final Function() onTap;
  final Color iconColor, buttonColor;
  const MyIconButton(
      {Key? key,
        required this.height,
        required this.width,

        this.icon,
        required this.onTap,
        required this.iconColor, required this.buttonColor})
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
        child: Icon(icon, color: iconColor, size: 20),
      ),
    );
  }
}
