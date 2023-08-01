
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceListRow extends StatelessWidget {
  final String title;
  final String   name;
  const PriceListRow({Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.white38Colors,
              fontSize: 16.sp
          ),
        ),
        Text(name,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.white60Colors,
              fontSize: 16.sp
          ),
        ),
      ],
    );
  }
}