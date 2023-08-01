import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../../Components/custom_containers.dart';
import '../../Components/custom_text_field.dart';
import '../Login View/login_view.dart';
import '../Shop Details View/shop_details_view.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final ValueNotifier<bool> _currentPasswordObscure = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _newPasswordObscure = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _confirmNewPasswordObscure = ValueNotifier<bool>(true);

  final currentPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();


  final currentPasswordFocusNode = FocusNode();
  final newPasswordFocusNode = FocusNode();
  final confirmNewPasswordFocusNode = FocusNode();

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
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Change Password',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Change your Account Password',
                ),
              ),
              SizedBox(height: 40.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Current Password',
                      textColor: AppColors.grayText2)),
              SizedBox(height: 15.h),
              ValueListenableBuilder(
                valueListenable: _currentPasswordObscure,
                builder: (BuildContext context, value, Widget? child) {
                  return CustomTextField(
                    controller: currentPasswordController,
                    focusNode: currentPasswordFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.text,
                    obscureText: _currentPasswordObscure.value,
                    hint: 'Current Password',
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: InkWell(
                        onTap: () {
                          _currentPasswordObscure.value =
                              !_currentPasswordObscure.value;
                        },
                        child: Icon(_currentPasswordObscure.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  );
                },
              ),
              SizedBox(height: 20.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'New Password',
                      textColor: AppColors.grayText2)),
              SizedBox(height: 15.h),
              ValueListenableBuilder(
                valueListenable: _newPasswordObscure,
                builder: (BuildContext context, value, Widget? child) {
                  return CustomTextField(
                    controller: newPasswordController,
                    focusNode: newPasswordFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.text,
                    obscureText: _newPasswordObscure.value,
                    hint: 'New Password',
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: InkWell(
                        onTap: () {
                          _newPasswordObscure.value =
                          !_newPasswordObscure.value;
                        },
                        child: Icon(_newPasswordObscure.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  );
                },
              ),
              SizedBox(height: 20.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Confirm Password',
                      textColor: AppColors.grayText2)),
              SizedBox(height: 15.h),
              ValueListenableBuilder(
                valueListenable: _confirmNewPasswordObscure,
                builder: (BuildContext context, value, Widget? child) {
                  return CustomTextField(
                    controller: confirmNewPasswordController,
                    focusNode: confirmNewPasswordFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.text,
                    obscureText: _confirmNewPasswordObscure.value,
                    hint: 'Confirm Password',
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: InkWell(
                        onTap: () {
                          _confirmNewPasswordObscure.value =
                          !_confirmNewPasswordObscure.value;
                        },
                        child: Icon(_confirmNewPasswordObscure.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  );
                },
              ),

              SizedBox(height: 80.h),
              CustomButton(
                title: 'Change Password',
                onPress: () {},
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
