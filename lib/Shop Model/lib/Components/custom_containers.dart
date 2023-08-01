import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';

class GreyContainer extends StatelessWidget {
  // final Widget child;
  final VoidCallback onTap;
  const GreyContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 348.w,
      decoration: BoxDecoration(
          color: AppColors.mainButton1Color,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          SizedBox(width: 30.w),
          Icon(
            Icons.person_3_outlined,
            color: AppColors.grayText,
          ),
          SizedBox(width: 30.w),
          Text18Regular(
            text: TKeys.bread_friend.translate(context),
            // 'Beard Friend',
            textColor: AppColors.grayText,
          )
        ],
      ),
    );
  }
}

class PurpleContainer extends StatelessWidget {
  final VoidCallback onTap;
  const PurpleContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100.h,
        width: 348.w,
        decoration: BoxDecoration(
            color: AppColors.mainButton2Color,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(width: 30.w),
            Icon(
              Icons.shop_2_outlined,
              color: AppColors.whiteColor,
            ),
            SizedBox(width: 30.w),
            Text18Regular(
              text: TKeys.BarberShops.translate(context),
              // 'Barbershop',
              textColor: AppColors.primaryText,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.dialogBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 22.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text18Regular(
                text: TKeys.Profile_Picture.translate(context),
                // 'Profile Picture',
                textColor: AppColors.grayText2,
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  radius: 50,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text16Medium(text: 'Tap to Add your Profile\n Picture')
          ],
        ),
      ),
    );
  }
}
