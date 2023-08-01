
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_field.dart';
import '../Change Password/change_password.dart';

class FAQsView extends StatefulWidget {
  const FAQsView({Key? key}) : super(key: key);

  @override
  State<FAQsView> createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();

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
                    text: 'FAQs',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Frequently Asked Question',
                ),
              ),
              SizedBox(height: 40.h),
              CustomTextField(
                controller: searchController,
                focusNode: searchFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Search',
                prefixIcon: const Icon(Icons.search),
              ),
              SizedBox(height: 30.h),
              CustomContainer2(
                h: 158.h,
                w: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text16White(text: 'How It Works?'),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.grayText2,
                            size: 32,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      const Text16Regular(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomContainer2(
                h: 70.h,
                w: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Center(
                    child: ListTile(
                      onTap: () {},
                      title: const Text16White(text: 'What is Contest?'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.grayText,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              CustomContainer2(
                h: 70.h,
                w: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: ListTile(
                      onTap: () {
                        Get.to(() => const ChangePasswordView());
                      },
                      title: const Text16White(text: 'How to Participate?'),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.grayText,
                      ),
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
