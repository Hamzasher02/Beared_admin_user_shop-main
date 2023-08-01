import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';

class ScanIDView extends StatefulWidget {
  const ScanIDView({Key? key}) : super(key: key);

  @override
  State<ScanIDView> createState() => _ScanIDViewState();
}

class _ScanIDViewState extends State<ScanIDView> {
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
            SizedBox(height: 35.h),
            const Align(
                alignment: Alignment.topLeft,
                child: Text24(
                  text: 'Scan ID',
                )),
            SizedBox(height: 5.h),
            const Align(
              alignment: Alignment.topLeft,
              child: Text16Medium(
                text: 'Scan Member ID ',
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 320.h,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset(AppImages.qrCode),
            ),
            SizedBox(height: 40.h),
            Text18Regular(
                text: 'Put your QR Code in the Box Above',
                textColor: AppColors.grayText2),
            SizedBox(height: 20.h),
            Text16Regular(
              text: TKeys
                      .This_is_your_anonymous_ID_Behind_it_hides_something_like_Your_can_now_have_your_ID_Scanned_by_a_praticipating_barbar_and_you_will_immediately_receive_your_digital_stamp
                  .translate(context),
              // 'This is your anonymous ID. Behind it hides something like “User#13". You can now have your ID scanned by a participating barber and you will immediately receive your digital stamp. '
            )
          ],
        ),
      ),
    );
  }
}
