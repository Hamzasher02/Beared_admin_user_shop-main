import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';

class ReservationsView extends StatefulWidget {
  const ReservationsView({Key? key}) : super(key: key);

  @override
  State<ReservationsView> createState() => _ReservationsViewState();
}

class _ReservationsViewState extends State<ReservationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Align(
                alignment: Alignment.topLeft,
                child: Text24(
                  text: TKeys.Reservations.translate(context),
                  // 'Reservations',
                )),
            SizedBox(height: 5.h),
            Align(
              alignment: Alignment.topLeft,
              child: Text16Medium(
                text: 'Manage Your Reservations',
              ),
            ),
            SizedBox(height: 40.h),
            Text18Regular(
                text: 'Pending Approval', textColor: AppColors.grayText2),
            SizedBox(height: 20.h),
            CustomContainer2(
              h: 100.h,
              w: double.infinity,
              child: Center(
                child: ListTile(
                  onTap: () {},
                  title: Text18Regular(
                    text: 'John Ipsum',
                    textColor: AppColors.primaryText,
                  ),
                  subtitle: Text14(
                    text: '4:00 PM on 04-03-2023   ',
                    textColor: AppColors.grayText2,
                  ),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                  trailing: SizedBox(
                    width: 70.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.grayText2),
                          child: Icon(
                            Icons.cancel,
                            color: AppColors.primaryText,
                          ),
                        ),
                        Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.buttonColor),
                          child: Icon(
                            Icons.check,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text18Regular(text: 'Upcoming', textColor: AppColors.grayText2),
            SizedBox(height: 20.h),
            CustomContainer2(
              h: 100.h,
              w: double.infinity,
              child: Center(
                child: ListTile(
                  title: Text18Regular(
                    text: 'John Ipsum',
                    textColor: AppColors.primaryText,
                  ),
                  subtitle: Text14(
                    text: '4:00 PM on 04-03-2023   ',
                    textColor: AppColors.grayText2,
                  ),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
