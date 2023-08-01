import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/appimages.dart';
import '../BeardCoinScreens/Beard_Coins.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // _ShowDialog();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(18.0.sp),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _ShowDialog1();
                            },
                            child: Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  color: AppColors.purpleAccentColors,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.public,
                                size: 19.sp,
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              _ShowDialog();
                            },
                            child: Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  color: AppColors.purpleAccentColors,
                                  borderRadius: BorderRadius.circular(8.sp)),
                              child: Icon(
                                Icons.headset_mic_rounded,
                                size: 19.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        child: CircleAvatar(
                          radius: 50.r,
                          backgroundImage: AssetImage(AppImages.prfileImg),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "Welcome Nouman,",
                        style: GoogleFonts.nunito(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Let's Scan Your QR Code to get a Beard Coin",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteGrayColors,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        height: 205.h,
                        width: 205.w,
                        child: Image.asset(
                          AppImages.qrCodeImg,
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Text(
                        "This is your anonymous ID. Behind it hides something\n"
                        "like 'User#13'. You can now have your ID scanned\n"
                        "by a participating barber and you will immediately\n"
                        "receive your digital stamp.",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteGrayColors,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                'We call it',
                                style: TextStyle(
                                  color: AppColors.whiteGrayColors,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                '"Beard coin"',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.textWhiteColors,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                            width: 151.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(
                                  const BeardCoinsScreen(),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors
                                    .purpleAccentColors, //background color of button
                                //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(15.r)),
                              ),
                              child: const Text('Beard Coins'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///  for first time Signup dialog ..Congratulation
  _ShowDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        insetPadding: EdgeInsets.all(25.h),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Image.asset(AppImages.dialogImg, height: 75.h, width: 88.w),
        actions: [
          SizedBox(
            height: 50.h,
            width: 151.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: AppColors.textWhiteColors),
                    borderRadius: BorderRadius.circular(15.r)),
              ),
              child: Text(
                "Skip",
                style: TextStyle(
                    color: AppColors.textWhiteColors,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            width: 25.w,
          ),
          SizedBox(
            height: 50.h,
            width: 151.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purpleAccentColors,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
              ),
              child: Text(
                "Assign",
                style: TextStyle(
                    color: AppColors.textWhiteColors,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
        content: Container(
          height: 100.h,
          child: Column(
            children: [
              Text(
                "Congratulation!!!",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.textWhiteColors,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "You Have Received 1 Stamp for Free. You Can\nAssign it to your favorite Barber.",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white38Colors,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Notification dialog
  void _ShowDialog1() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        insetPadding: EdgeInsets.all(18.sp),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.textWhiteColors,
              ),
            ),
            const Spacer(),
            Text(
              "Clear All",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white38,
              ),
            ),
          ],
        ),
        actions: [
          SizedBox(
            height: 50.h,
            width: 151.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purpleAccentColors,
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(15.r)),
              ),
              child: Text(
                "Done",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        content: Container(
          height: 140.h, //width:270.w,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: AppColors.purpleAccentColors,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Icon(
                      Icons.card_giftcard,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 270.w,
                    child: RichText(
                      text: TextSpan(
                        text: 'You Have Got a Birthday Gift from the\n',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.white38Colors,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "“The Creative Cuts”",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.textWhiteColors,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                        color: AppColors.purpleAccentColors,
                        borderRadius: BorderRadius.circular(8.sp)),
                    child: Image.asset(AppImages.cupIcon, color: Colors.white),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "The Beard Contest Has Started!",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.white38Colors,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
