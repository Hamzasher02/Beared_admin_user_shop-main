import 'package:flutter/material.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';


class CustomTextButton extends StatelessWidget {
  final void Function() onTap;
  final double height, width;
  final Color color;
  final String title;

  const CustomTextButton({
    super.key,
    required this.color,
    required this.title,
    required this.onTap,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.grayText)),
        child: Center(
            child: Text18Regular(
              text: title,
              textColor: AppColors.primaryText,
            )),
      ),
    );
  }
}
