
import 'package:beared_friend/Shop%20Model/lib/Components/custom_container2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';

class MyCard extends StatelessWidget {
  final String image, title, details, price;
  final void Function()? onTap;
  const MyCard({
    super.key,
    required this.image,
    required this.title,
    required this.details,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer2(
      h: 255.h,
      w: 175.w,
      child: Column(
        children: [
          Stack(
            children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20)
            ),
            child: Container(
              height: 150.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
          ),
          Positioned(
              top: 120.h,
              left: 150.w,
              child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: AppColors.dialogBoxColor,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.favorite_border,
                    size: 18,
                    color: AppColors.whiteColor,
                  )))
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text16White(text: title),
                SizedBox(
                  height: 5.h,
                ),
                Text12(text: details, textColor: AppColors.grayText),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text18Regular(
                        text: price, textColor: AppColors.primaryText),
                    InkWell(
                      onTap: onTap,
                      child: Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
