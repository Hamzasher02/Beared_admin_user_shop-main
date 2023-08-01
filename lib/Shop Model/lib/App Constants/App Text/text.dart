
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Colors/app_colors.dart';
import '../App Fonts/app_fonts.dart';

class Text24 extends StatelessWidget {
  final String text;
  const Text24({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: AppFonts.nunitoBold,
          fontSize: 24.sp,
          color: AppColors.primaryText,
        letterSpacing: -0.03
      ),
    );
  }
}

class Text20 extends StatelessWidget {
  final String text;
  const Text20({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: AppFonts.nunitoBold,
          fontSize: 20.sp,
          color: AppColors.primaryText,
          letterSpacing: -0.03
      ),
    );
  }
}

class Text16Medium extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const Text16Medium({Key? key, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: AppFonts.nunitoSemiBold,
            fontSize: 16.sp,
            color: AppColors.grayText,
        ),
      ),
    );
  }
}

class Text16Regular extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const Text16Regular({Key? key, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: AppFonts.nunitoRegular,
          fontSize: 16.sp,
          color: AppColors.grayText,
        ),
      ),
    );
  }
}

class Text16White extends StatelessWidget {
  final String text;
  const Text16White({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppFonts.nunitoSemiBold,
        fontSize: 16.sp,
        color: AppColors.primaryText,
      ),
    );
  }
}

class Text18Regular extends StatelessWidget {
  final String text;
  final Color textColor;
  const Text18Regular({Key? key, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppFonts.nunitoRegular,
        fontSize: 18.sp,
        color: textColor,
      ),
    );
  }
}


class Text14 extends StatelessWidget {
  final String text;
  final Color textColor;
  const Text14({Key? key, required this.text, required this.textColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: AppFonts.nunitoRegular,
        fontSize: 14.sp,
        color: textColor,
      ),
    );
  }
}

class Text12 extends StatelessWidget {
  final String text;
  final Color textColor;
  const Text12({Key? key, required this.text, required this.textColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontFamily: AppFonts.nunitoRegular,
        fontSize: 12.sp,
        color: textColor,
      ),
    );
  }
}