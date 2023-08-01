import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Images/app_images.dart';
import '../App Constants/App Text/text.dart';

class StampsRow extends StatelessWidget {
  const StampsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                  height: Get.height * .030,
                  width: Get.width * .03,
                  child: Image.asset(AppImages.mainLogo)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                  height: Get.height * .030,
                  width: Get.width * .03,
                  child: Image.asset(AppImages.mainLogo)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                  height: Get.height * .030,
                  width: Get.width * .03,
                  child: Image.asset(AppImages.mainLogo)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                  height: Get.height * .030,
                  width: Get.width * .03,
                  child: Image.asset(AppImages.mainLogo)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
        SizedBox(
          height: Get.height * .015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: Get.width * .015,
            ),
            Container(
              height: 65.h,
              width: 65.w,
              decoration: BoxDecoration(
                  color: AppColors.grayText2,
                  border: Border.all(color: AppColors.grayText2),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text16Regular(
                text: 'Free',
              )),
            ),
          ],
        ),
      ],
    );
  }
}
