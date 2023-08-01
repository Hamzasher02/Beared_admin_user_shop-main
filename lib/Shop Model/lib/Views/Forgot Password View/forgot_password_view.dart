import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../../Components/custom_text_field.dart';
import '../Login View/login_view.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150.h),
                const Text24(text: 'Forgot Password?'),
                SizedBox(height: 5.h),
                const Text16Medium(
                  text: 'Please Type in your Email Address',
                ),
                SizedBox(height: 130.h),
                CustomTextField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  onFieldSubmittedValue: (newValue) {},
                  keyBoardType: TextInputType.emailAddress,
                  obscureText: false,
                  hint: 'Email Address',
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                SizedBox(height: 130.h),
                CustomButton(title: 'Reset Password', onPress: () {  },),

                SizedBox(height: 265.h),
                InkWell(
                  onTap: () {
                    Get.off(() => const ShopLoginView());
                  },
                  child: Text.rich(TextSpan(
                      text: "Remember Password? ",
                      style: TextStyle(
                          fontFamily: AppFonts.nunitoRegular,
                          color: AppColors.grayText,
                          fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 12,
                            fontFamily: AppFonts.nunitoBold,
                            letterSpacing: 0.2,
                          ),
                        )
                      ])),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
