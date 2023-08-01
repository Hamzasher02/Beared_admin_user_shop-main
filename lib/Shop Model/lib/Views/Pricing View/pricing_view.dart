import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../../../Admin Module/lib/widgets/textfield.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/double_text_field.dart';
import '../../Components/icon_button.dart';
import '../../Components/small_button.dart';
import '../Bottom Nav Bar/bottom_navigation_bar.dart';

class PricingView extends StatefulWidget {
  const PricingView({Key? key}) : super(key: key);

  @override
  State<PricingView> createState() => _PricingViewState();
}

class _PricingViewState extends State<PricingView> {
  final labelController = TextEditingController();
  final priceController = TextEditingController();
  final language1Controller = TextEditingController();
  final language2Controller = TextEditingController();

  final labelFocusNode = FocusNode();
  final priceFocusNode = FocusNode();
  final language1FocusNode = FocusNode();
  final language2FocusNode = FocusNode();

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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Price List & Languages',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Complete Your Profile to Continue',
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text18Regular(
                      text: TKeys.Price.translate(context),
                      // 'Price',
                      textColor: AppColors.grayText2),
                  SmallButton(
                    height: 40.h,
                    width: 115.w,
                    title: 'Add Field',
                    icon: Icons.add,
                    onTap: () {},
                    textColor: AppColors.primaryText,
                    buttonColor: AppColors.buttonColor,
                    iconColor: AppColors.whiteColor,
                  )
                ],
              ),
              SizedBox(height: 20.h),
              DoubleTextField(
                controller1: labelController,
                focusNode1: labelFocusNode,
                onFieldSubmittedValue1: (newValue1) {},
                hint1: 'Label',
                controller2: priceController,
                focusNode2: priceFocusNode,
                onFieldSubmittedValue2: (newValue2) {},
                hint2: TKeys.Price.translate(context),
                //  'Price',
              ),
              SizedBox(height: 20.h),
              DoubleTextField(
                controller1: labelController,
                focusNode1: labelFocusNode,
                onFieldSubmittedValue1: (newValue1) {},
                hint1: 'Label',
                controller2: priceController,
                focusNode2: priceFocusNode,
                onFieldSubmittedValue2: (newValue2) {},
                hint2: TKeys.Price.translate(context),
                //  'Price',
              ),
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Languages', textColor: AppColors.grayText2)),
              SizedBox(height: 20.h),
              DoubleTextField(
                controller1: language1Controller,
                focusNode1: language1FocusNode,
                onFieldSubmittedValue1: (newValue1) {},
                hint1: 'Enter Language',
                controller2: language2Controller,
                focusNode2: language2FocusNode,
                onFieldSubmittedValue2: (newValue2) {},
                hint2: 'Enter Language',
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(
                    height: 65.h,
                    width: 190.w,
                    child: CustomTextField(
                      controller: labelController,
                      focusNode: labelFocusNode,
                      onFieldSubmittedValue: (newValue) {},
                      keyBoardType: TextInputType.text,
                      obscureText: false,
                      hint: 'Enter Language',
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  MyIconButton(
                    height: 60.h,
                    width: 60.w,
                    icon: Icons.add,
                    onTap: () {},
                    buttonColor: AppColors.buttonColor,
                    iconColor: AppColors.whiteColor,
                  )
                ],
              ),
              SizedBox(height: 65.h),
              CustomButton(
                title: 'Complete Profile',
                onPress: () {
                  Get.to(() => BottomNavigationBarView(
                        currentIndex: 0,
                        onTap: (int index) {},
                        items: [],
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
