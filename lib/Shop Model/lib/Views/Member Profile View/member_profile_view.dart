import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/reusable_row.dart';
import '../../Components/stamps_row.dart';

class MemberProfileView extends StatefulWidget {
  const MemberProfileView({Key? key}) : super(key: key);

  @override
  State<MemberProfileView> createState() => _MemberProfileViewState();
}

class _MemberProfileViewState extends State<MemberProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                    height: 420.h,
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.dummy,
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 420.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, AppColors.scaffoldColor],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text24(
                          text: 'Nouman Imran',
                        ),
                        Text16Medium(text: TKeys.Beard_Friend.translate(context)

                            // 'Beard Friend'
                            )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text18Regular(
                          text: TKeys.Stamp_Collected.translate(context),
                          // 'Stamp Collected',
                          textColor: AppColors.grayText2),
                      Container(
                        height: 25.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: const Text14(
                          text: '4/10',
                          textColor: Colors.black,
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text16Regular(text: 'Campaign  # 2'),
                  SizedBox(
                    height: 15.h,
                  ),
                  const StampsRow(),
                  SizedBox(height: 35.h),
                  Text18Regular(
                      text: TKeys.Shop_Details.translate(context),

                      // 'Shop_Details',
                      textColor: AppColors.grayText2),
                  SizedBox(
                    height: 20.h,
                  ),
                  ReusableRow(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    label: TKeys.Name.translate(context),
                    title: 'Nouman Imran',
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ReusableRow(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    label: TKeys.Email.translate(context),
                    // 'Email',
                    title: 'noumanimran@gmail.de',
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ReusableRow(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    label: TKeys.Phone.translate(context),
                    //  'Phone',
                    title: '+49 546 934590',
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const ReusableRow(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    label: 'Address',
                    title: '+Kollnburg - Germany',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
