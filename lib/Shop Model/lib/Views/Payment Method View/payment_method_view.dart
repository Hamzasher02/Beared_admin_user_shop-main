
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../../Components/reusable_row.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
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
              SizedBox(height: 35.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Payment Method',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Choose a Payment Method',
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 90.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text18Regular(
                          text: 'Visa', textColor: AppColors.primaryText),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text14(
                              text: '**** **** 2105',
                              textColor: AppColors.grayText2),
                          Text14(text: '08/29', textColor: AppColors.grayText2),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 90.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.dialogBoxColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text18Regular(
                          text: 'Paypal', textColor: AppColors.primaryText),
                      SizedBox(height: 10.h),
                      Text14(
                          text: '**** **** 1545',
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
                      text: 'My Payment Methods', textColor: AppColors.grayText2),
                  CustomTextButton(
                    height: 35.h,
                    width: 125.w,
                    title: 'Add Another',
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(Icons.location_on_sharp),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text18Regular(
                                            text: '**** **** 2105',
                                            textColor: AppColors.primaryText),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text16White(text: 'Deutsche Bundesbank'),


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
                height: 30.h,
              ),
              Text18Regular(text: 'Checkout', textColor: AppColors.grayText2),
              SizedBox(
                height: 20.h,
              ),
              const ReusableRow(
                  label: 'Total',
                  title: '2014',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(height: 15.h,),
              const ReusableRow(
                  label: 'Shipping',
                  title: '2.99',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(height: 15.h,),
              const ReusableRow(
                  label: 'Subtotal ',
                  title: '23.21',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(
                height: 80.h,
              ),
              CustomButton(title: 'Buy', onPress: () {}),
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
