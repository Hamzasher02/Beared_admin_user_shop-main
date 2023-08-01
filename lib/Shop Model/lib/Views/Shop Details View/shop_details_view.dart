import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Admin Module/lib/widgets/textfield.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../../Components/large_text_field.dart';
import '../Timing View/auto_timing_view.dart';

class ShopDetailsView extends StatefulWidget {
  const ShopDetailsView({Key? key}) : super(key: key);

  @override
  State<ShopDetailsView> createState() => _ShopDetailsViewState();
}

class _ShopDetailsViewState extends State<ShopDetailsView> {
  final shopNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final siteController = TextEditingController();
  final staffController = TextEditingController();
  final aboutController = TextEditingController();

  final shopNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final siteFocusNode = FocusNode();
  final staffFocusNode = FocusNode();
  final aboutFocusNode = FocusNode();

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Setup Shop Details',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Complete Your Profile to Continue',
                ),
              ),
              SizedBox(height: 40.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Shop Info', textColor: AppColors.grayText2)),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: shopNameController,
                focusNode: shopNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Shop Name',
                prefixIcon: const Icon(Icons.shopify_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: emailController,
                focusNode: emailFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
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
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: TKeys.Phone_Number.translate(context),
                // 'Phone Number',
                prefixIcon: const Icon(Icons.phone_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: TKeys.Address.translate(context),
                // 'Address',
                prefixIcon: const Icon(Icons.location_on_outlined),
                suffixIcon: const Icon(Icons.filter_tilt_shift_outlined),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: siteController,
                focusNode: siteFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Sits',
                prefixIcon: const Icon(Icons.mic_none_outlined),
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: staffController,
                focusNode: staffFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Staff Members',
                prefixIcon: const Icon(Icons.supervised_user_circle_outlined),
              ),
              SizedBox(height: 20.h),
              LargeTextField(
                controller: aboutController,
                focusNode: aboutFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'About',
              ),
              SizedBox(height: 65.h),
              CustomButton(
                title: TKeys.next.translate(context),
                // 'Next',
                onPress: () {
                  Get.to(() => const AutoTimingView());
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
