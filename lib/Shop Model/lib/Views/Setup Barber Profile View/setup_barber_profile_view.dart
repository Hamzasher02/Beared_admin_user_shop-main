import 'package:beared_friend/t_key.dart';
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

class BarberProfileView extends StatefulWidget {
  const BarberProfileView({Key? key}) : super(key: key);

  @override
  State<BarberProfileView> createState() => _BarberProfileViewState();
}

class _BarberProfileViewState extends State<BarberProfileView> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  final userNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Setup Profile',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Complete Your Profile to Continue',
                ),
              ),
              SizedBox(height: 40.h),
              const ProfileContainer(),
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: TKeys.Personal_Info.translate(context),
                      // 'Personal Info',
                      textColor: AppColors.grayText)),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: userNameController,
                focusNode: userNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Your Name',
                prefixIcon: const Icon(Icons.person_2_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: emailController,
                focusNode: emailFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.emailAddress,
                obscureText: false,
                hint: TKeys.Email_Address.translate(context),
                //  'Email Address',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.number,
                obscureText: false,
                hint: TKeys.Phone_Number.translate(context),
                //  'Phone Number',
                prefixIcon: const Icon(Icons.call_outlined),
              ),
              SizedBox(height: 62.h),
              CustomButton(
                title: TKeys.next.translate(context),
                //  'Next',
                onPress: () {
                  Get.to(() => const ShopDetailsView());
                },
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
