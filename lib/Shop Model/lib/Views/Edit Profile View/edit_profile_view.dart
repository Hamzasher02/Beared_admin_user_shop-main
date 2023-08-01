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

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final shopNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  final userNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final addressFocusNode = FocusNode();
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
                    text: 'Edit Profile',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Update Your Profile',
                ),
              ),
              SizedBox(height: 40.h),
              const ProfileContainer(),
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Personal Info', textColor: AppColors.grayText2)),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: shopNameController,
                focusNode: userNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Shop Name',
                prefixIcon: const Icon(Icons.shopping_bag),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: emailController,
                focusNode: emailFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.emailAddress,
                obscureText: false,
                hint: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.number,
                obscureText: false,
                hint: 'Phone Number',
                prefixIcon: const Icon(Icons.call_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: addressController,
                focusNode: addressFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Address',
                prefixIcon: const Icon(Icons.location_on_outlined),
                suffixIcon: const Icon(Icons.my_location_sharp),
              ),
              SizedBox(height: 62.h),
              CustomButton(
                title: 'Update',
                onPress: () {

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
