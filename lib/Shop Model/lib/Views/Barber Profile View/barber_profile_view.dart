import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../../Components/icon_button.dart';
import '../../Components/reusable_row.dart';
import '../Reservations View/reservations_view.dart';
import '../Scan ID View/scan_id_view.dart';
import '../Staff VIew/staff_view.dart';

class BarberProfileDetails extends StatefulWidget {
  const BarberProfileDetails({Key? key}) : super(key: key);

  @override
  State<BarberProfileDetails> createState() => _BarberProfileDetailsState();
}

class _BarberProfileDetailsState extends State<BarberProfileDetails> {
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
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 45.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: MyIconButton(
                            height: 40.h,
                            width: 40.w,
                            onTap: () {},
                            iconColor: AppColors.whiteColor,
                            buttonColor: AppColors.buttonColor,
                            icon: Icons.edit,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text24(
                                text: TKeys.Creative_Cuts.translate(context),
                                // 'Creative_Cuts',
                              ),
                              Text16Medium(text: 'Koln - Germany'),
                            ],
                          ),
                          CustomTextButton(
                            height: 40.h,
                            width: 125.w,
                            title: TKeys.Share_Profile.translate(context),
                            // 'Share Profile',
                            onTap: () {},
                            color: AppColors.buttonColor,
                          ),
                        ],
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text18Regular(
                    text: TKeys.Manage_Shop.translate(context),
                    //  'Manage Shop',
                    textColor: AppColors.grayText2),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      onTap: () {
                        Get.to(() => const ScanIDView());
                      },
                      h: 104.h,
                      w: 113.w,
                      title: TKeys.Scan_ID.translate(context),
                      image: AppImages.scan,
                    ),
                    CustomContainer(
                      onTap: () {
                        Get.to(() => const ReservationsView());
                      },
                      h: 104.h,
                      w: 113.w,
                      title: TKeys.Reservations.translate(context),
                      // 'Reservation',
                      image: AppImages.calender,
                    ),
                    CustomContainer(
                      h: 104.h,
                      w: 113.w,
                      title: TKeys.My_Staff.translate(context),
                      // 'My Staff',
                      image: AppImages.group,
                      onTap: () {
                        Get.to(() => const StaffView());
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text18Regular(
                    text: TKeys.Manage_Shop.translate(context),
                    // 'Manage Shop',
                    textColor: AppColors.grayText2),
                SizedBox(
                  height: 20.h,
                ),
                ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: TKeys.Address.translate(context),
                  //  'Address',
                  title: 'Koln - Germany',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Web',
                  title: '     www.creativecut-cologne.de',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Tel',
                  title: '       +49 221 934590',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Mail',
                  title: '     contact@creativecut.cologne.de',
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text18Regular(text: 'About', textColor: AppColors.grayText2),
                SizedBox(
                  height: 20.h,
                ),
                const Text16Regular(
                    text:
                        'vLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.'),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text18Regular(
                        text: TKeys.Shop_Details.translate(context),
                        // 'Shop Details',
                        textColor: AppColors.grayText2),
                    CustomTextButton(
                      height: 35.h,
                      width: 55.w,
                      onTap: () {},
                      title: TKeys.Edit.translate(context),
                      // 'Edit',
                      color: AppColors.buttonColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Sits',
                  title: '           12',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Languages',
                  title: 'English, Austrian & Egyption',
                ),
                SizedBox(
                  height: 15.h,
                ),
                ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: TKeys.Staff.translate(context),
                  // 'Staff',
                  title: "6+ ${TKeys.Members.translate(context)}",
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text18Regular(
                        text: 'Price List', textColor: AppColors.grayText2),
                    CustomTextButton(
                      height: 35.h,
                      width: 55.w,
                      onTap: () {},
                      title: TKeys.Edit.translate(context),
                      // 'Edit',
                      color: AppColors.buttonColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Hair Cut',
                  title: "14 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Hair Cut & Style ',
                  title: "14 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Hair Cut & Beard',
                  title: "14 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Beard Only',
                  title: "14 ",
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text18Regular(
                        text: 'Opening Timing', textColor: AppColors.grayText2),
                    CustomTextButton(
                      height: 35.h,
                      width: 55.w,
                      onTap: () {},
                      title: TKeys.Edit.translate(context),
                      // 'Edit',
                      color: AppColors.buttonColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Monday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Tuesday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Wednesday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Thursday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Friday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Saturday',
                  title: "9:00 to 17:00 ",
                ),
                SizedBox(
                  height: 15.h,
                ),
                ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Sunday',
                  title: "Closed",
                  w: 0.w,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text18Regular(
                    text: 'Portfolio', textColor: AppColors.grayText2),
                SizedBox(
                  height: 30.h,
                ),
                CustomContainer2(
                  h: 355.h,
                  w: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: 165,
                                width: 190,
                                child: Image.asset(AppImages.cut1)),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 86.h,
                                    width: 130.w,
                                    child: Image.asset(AppImages.cut2)),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                    height: 86.h,
                                    width: 130.w,
                                    child: Image.asset(AppImages.cut3)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset(AppImages.cut4),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
