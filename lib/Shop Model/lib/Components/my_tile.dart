import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';
import 'custom_container2.dart';


class MyTile extends StatelessWidget {
  final String title, subtitle;
  final Widget? leading;
  final Widget? trailing;

  const MyTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer2(
      h: 86.h,
      w: double.infinity,
      child: Center(
        child: ListTile(
          title: Text18Regular(
            text: title,
            textColor: AppColors.primaryText,
          ),
          subtitle: Text14(
            text: subtitle,
            textColor: AppColors.grayText2,
          ),
          leading: leading,
          trailing: trailing,
        ),
      ),
    );
  }
}