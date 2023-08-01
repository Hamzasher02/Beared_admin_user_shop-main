import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_containers.dart';
import '../Login View/login_view.dart';

class SelectionView extends StatefulWidget {
  const SelectionView({Key? key}) : super(key: key);

  @override
  State<SelectionView> createState() => _SelectionViewState();
}

class _SelectionViewState extends State<SelectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 170.h),
            const Text24(text: 'Tell Us About Yourself'),
            SizedBox(height: 5.h),
            Text18Regular(
              text: 'Choose to Continue',
              textColor: AppColors.grayText,
            ),
            SizedBox(height: 130.h),
            GreyContainer(
              onTap: () {  },
            ),
            SizedBox(height: 45.h),
            PurpleContainer(
              onTap: () {  }
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 145.w,
        child: FloatingActionButton(
          backgroundColor: AppColors.floatingButton,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text16White(text: 'Next',),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
          ),

          onPressed: () {
            Get.to(() => const ShopLoginView());
          },),
      ),
    );
  }
}
