import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/images.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

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
                height: 68.h,
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: iconwhite,
                    size: 20.sp,
                  )),
              SizedBox(
                height: 36.h,
              ),
              Text(
                "Orders Details",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: textwhite.withOpacity(.87),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 100.h,
                width: 378.w,
                decoration: BoxDecoration(
                  color: containerbg,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        productpic,
                        height: 60.h,
                        width: 60.h,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Comb & Scissors",
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: textwhite.withOpacity(.87),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Nunito"),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "\$2.47",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.87),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Nunito"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Order Information",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Id",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "124534124542",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Date",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "11/11/2023 14:45",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              Text(
                "Customer Information",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Customer",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Aida Bugg",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Customer Contact",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "aidabug@gmail.com",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              Text(
                "Payment Information",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Paypal",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Items",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  Text(
                    "07",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
               SizedBox(
                height: 15.h,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  Text(
                    "\$23.21",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
               SizedBox(
                height: 15.h,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Charges",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  Text(
                    "\$4.01",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
               SizedBox(
                height: 15.h,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  Text(
                    "\$27.22",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
                SizedBox(
                height: 30.h,
              ),
                 Text(
                "Shipping Address",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
                SizedBox(
                height: 15.h,
              ),
                Text(
                "26 Division Rd.Hixson, TN 37343 9618 E. Meadowok St.Augusta, GA 30906",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
                SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
