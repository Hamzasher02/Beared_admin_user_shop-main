import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_containers.dart';
import '../../Components/custom_text_field.dart';
import '../Change Password/change_password.dart';
import '../Login View/login_view.dart';
import '../Shop Details View/shop_details_view.dart';

class SecurityView extends StatefulWidget {
  const SecurityView({Key? key}) : super(key: key);

  @override
  State<SecurityView> createState() => _SecurityViewState();
}

class _SecurityViewState extends State<SecurityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 13,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: TKeys.Privacy_Security.translate(context),
                    //  'Privacy & Security',
                  )),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: TKeys.Protect_your_Account.translate(context),
                  // 'Protect Your Account',
                ),
              ),
              SizedBox(height: 40.h),
              CustomContainer2(
                h: 80.h,
                w: double.infinity,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Get.to(() => const ChangePasswordView());
                    },
                    title: Text16Regular(
                      text: TKeys.Change_Password.translate(context),
                      //  'Change Password'
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.grayText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              CustomContainer2(
                h: 80.h,
                w: double.infinity,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Get.to(() => const SecurityView());
                    },
                    title: Text16Regular(
                      text: TKeys.Data_privacy.translate(context),
                      // 'Data Privacy'
                    ),
                    trailing: Icon(
                      Icons.public_outlined,
                      color: AppColors.grayText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
