import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_colors.dart';
// ignore: must_be_immutable
class FilterTextWidget extends StatelessWidget {
  final BorderRadius borderRadius;
  final String text;

  FilterTextWidget({super.key,
    this.borderRadius = BorderRadius.zero,
    required this.text,
  });
  bool option = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return InkWell(
            onTap: () {
              setState(() {
                option = !option;
              });
            },
            child: Container(padding: EdgeInsets.all(5.h),
              height: 35.h,
              width: 107.w,
              decoration: BoxDecoration(
                  border: option ? null : Border.all(color: Colors.white),
                  color: option
                      ? AppColors.purpleAccentColors
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(18.r)),
              child: Row(
                children: [
                  // option ? Icon(Icons.check, size: 15,) : SizedBox.shrink(),
                  SizedBox(width: 10.w,),
                  Center(child: Text(text,
                    style: TextStyle(
                      color: AppColors.white38Colors,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                   ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}