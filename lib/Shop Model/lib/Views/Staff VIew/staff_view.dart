import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../Add Staff View/add_staff_view.dart';
import '../Member Profile View/member_profile_view.dart';

class StaffView extends StatefulWidget {
  const StaffView({Key? key}) : super(key: key);

  @override
  State<StaffView> createState() => _StaffViewState();
}

class _StaffViewState extends State<StaffView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .025),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90.h),
            Align(
                alignment: Alignment.topLeft,
                child: Text24(
                  text: TKeys.Staff.translate(context),
                  //  'Staff',
                )),
            SizedBox(height: 5.h),
            Align(
              alignment: Alignment.topLeft,
              child: Text16Medium(
                text: TKeys.Manage_Your_Staff.translate(context),
                // 'Manage Your Staff',
              ),
            ),
            SizedBox(height: 40.h),
            CustomContainer2(
              h: 100.h,
              w: double.infinity,
              child: Center(
                child: ListTile(
                    onTap: () {
                      Get.to(() => const MemberProfileView());
                    },
                    title: Text18Regular(
                      text: 'Aidda Aidaa',
                      textColor: AppColors.primaryText,
                    ),
                    subtitle: Text14(
                      text: 'ID 545745124',
                      textColor: AppColors.grayText2,
                    ),
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                    trailing: CustomTextButton(
                        color: AppColors.deleteButton,
                        title: TKeys.Delete.translate(context),
                        // 'Delete',
                        onTap: () {},
                        height: 40.h,
                        width: 75.w)),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.floatingButton,
        shape: const CircleBorder(),
        onPressed: () {
          Get.to(() => const AddStaffView());
        },
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
