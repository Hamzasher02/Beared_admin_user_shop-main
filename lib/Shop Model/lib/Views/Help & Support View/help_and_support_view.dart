
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../FAQs View/faqs_view.dart';

class HelpAndSupportView extends StatefulWidget {
  const HelpAndSupportView({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportView> createState() => _HelpAndSupportViewState();
}

class _HelpAndSupportViewState extends State<HelpAndSupportView> {
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
              SizedBox(height: 90.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Help & Support',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'We are Available 24/7 ',
                ),
              ),
              SizedBox(height: 40.h),
              CustomContainer2(
                h: 70.h,
                w: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Center(
                    child: ListTile(
                      onTap: () {},
                      title: const Text16White(text: 'Email Us'),
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
                        Get.to(() => const FAQsView());
                      },
                      title: const Text16White(text: 'FAQs'),
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
