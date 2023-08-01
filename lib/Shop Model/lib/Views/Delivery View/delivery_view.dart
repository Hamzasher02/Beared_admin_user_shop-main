
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../Payment Method View/payment_method_view.dart';

class DeliveryView extends StatefulWidget {
  const DeliveryView({Key? key}) : super(key: key);

  @override
  State<DeliveryView> createState() => _DeliveryViewState();
}

class _DeliveryViewState extends State<DeliveryView> {
  List<String> titleArray = [
    'Home',
    'Work'
  ];
  List<String> subTitleArray = [
    'Rheinland-Pfalz',
    'Lützowplatz Rhein'
  ];
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Delivery',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Choose Address for Delivery',
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 110.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.edit,
                            size: 15,
                            color: AppColors.whiteColor,
                          )),
                      Text18Regular(
                          text: 'Nouman', textColor: AppColors.primaryText),
                      Text14(
                          text:
                              'PI-133, Lützowplatz 73, Heddert, Rheinland-Pfalz, Germeny',
                          textColor: AppColors.grayText2)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text18Regular(
                      text: 'My Addresses', textColor: AppColors.grayText2),
                  CustomTextButton(
                    height: 35.h,
                    width: 125.w,
                    title: 'Add Address',
                    onTap: () {},
                    color: AppColors.buttonColor,
                  )
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 225.h,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CustomContainer2(
                          h: 100.h,
                          w: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    child: Row(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset(AppImages.icon)
                                    ),
                                    SizedBox(width: 20.w,),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text18Regular(
                                            text: titleArray[index],
                                            textColor: AppColors.primaryText),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text16White(text: subTitleArray[index])
                                      ],
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              CustomButton(
                  title: 'Continue',
                  onPress: () {
                    Get.to(() => const PaymentMethodView());
                  }),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
