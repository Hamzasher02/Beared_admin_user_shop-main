
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../LogInScreen/login.dart';

class Forget_Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(47, 47, 55, 100),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  Text("Forgot Password?",
                      style: GoogleFonts.nunito(
                          fontSize: 24.sp,
                          color: AppColors.textWhiteColors,
                          fontWeight: FontWeight.w700)),
                  Text(
                    "Please Type in your Email Address",
                    style: GoogleFonts.nunito(
                        color: AppColors.whiteGrayColors,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 131.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: const CustomTextFormField(
                      labelText: "Email Address",
                      hintText: "Email Address",
                      icon: Icons.email,
                    ),
                  ),
                  SizedBox(
                    height: 131.h,
                  ),
                  CustomElevatedButton(
                      onPressed: () {
                        Get.to(MemberLoginScreen());
                      },
                      label: "Reset Password"),
                  SizedBox(height: 200.h),
                  Wrap(
                    children: [
                      Text(
                        "Remember Password? ",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.whiteGrayColors,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(MemberLoginScreen());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: AppColors.textWhiteColors,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 49.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
