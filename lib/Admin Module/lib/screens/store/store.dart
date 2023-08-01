
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../widgets/barchart.dart';
import 'order/order.dart';


class Store extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90.h,
              ),
              Text(
                "Store",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: textwhite.withOpacity(.87),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Manage Your Store",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>Products());
                    },
                    child: Container(
                      height: 156.h,
                      width: 179.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: containerbg),
                      child: Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(product),
                            SizedBox(
                              height: 40.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Products",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: textwhite.withOpacity(.87),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: iconwhite,
                                  size: 10.sp,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Manage Products",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: textwhite.withOpacity(.60),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Nunito"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>Order());
                    },
                    child: Container(
                      height: 156.h,
                      width: 179.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: containerbg),
                      child: Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(order),
                            SizedBox(
                              height: 40.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Orders",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: textwhite.withOpacity(.87),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: iconwhite,
                                  size: 10.sp,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Manage Orders",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: textwhite.withOpacity(.60),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Nunito"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Orders OverView",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 60.h,
                width: 378.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: containerbg),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.access_time_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_outlined  ,
                        color: textwhite.withOpacity(.38),
                      ),
                      hintText: "Group by month",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                      ),
                    ),
                    style: TextStyle(
                        color: textwhite.withOpacity(.38),
                        fontFamily: 'Montserrat',
                        fontSize: 14),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 284.h,
                width: 378.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: containerbg
                ),
                child: Padding(
                  padding:  EdgeInsets.only(right: 20.w),
                  child: Barchart(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
