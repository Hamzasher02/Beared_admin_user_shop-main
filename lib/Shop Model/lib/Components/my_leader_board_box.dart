
import 'package:beared_friend/Shop%20Model/lib/Components/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Images/app_images.dart';
import '../App Constants/App Text/text.dart';
import '../Views/Contester Detail/contester_detail.dart';

class MyLeaderBoardBox extends StatelessWidget {
  final void Function()? onTap;
  const MyLeaderBoardBox({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 180.h,
                width: 175.w,
                decoration: BoxDecoration(
                    color: AppColors.dialogBoxColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Container(
                        height: 125.h,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                AppImages.first,
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 35.h,
                      width: 140.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallButton(
                            height: 25.h,
                            width: 60.w,
                            onTap: () {},
                            title: '1',
                            icon: Icons.wine_bar,
                            buttonColor: AppColors.buttonColor,
                            textColor: AppColors.primaryText,
                            iconColor: AppColors.whiteColor,
                          ),
                          Text14(
                              text: '1455 Votes',
                              textColor: AppColors.primaryText)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.second,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '2',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1255 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.third,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '3',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1155 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.forth,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '4',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1004 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.first,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '5',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1423 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.second,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '6',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1202 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.third,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '7',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '1134 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 180.h,
              width: 175.w,
              decoration: BoxDecoration(
                  color: AppColors.dialogBoxColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 125.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppImages.forth,
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 35.h,
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          height: 25.h,
                          width: 60.w,
                          onTap: () {},
                          title: '8',
                          icon: Icons.wine_bar,
                          buttonColor: AppColors.whiteColor,
                          textColor: AppColors.blackText,
                          iconColor: AppColors.blackText,
                        ),
                        Text14(
                            text: '980 Votes',
                            textColor: AppColors.primaryText)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
