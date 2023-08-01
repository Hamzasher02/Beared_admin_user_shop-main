
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';

class ContesterDetail extends StatefulWidget {
  const ContesterDetail({Key? key}) : super(key: key);

  @override
  State<ContesterDetail> createState() => _ContesterDetailState();
}

class _ContesterDetailState extends State<ContesterDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AppImages.fifth,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 60,
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 800.h,
            left: 20.w,
            child: CustomContainer2(
              h: 60.h,
              w: 377.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text16White(
                      text: '927 Votes',
                    ),
                    Image.asset(AppImages.like)
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
