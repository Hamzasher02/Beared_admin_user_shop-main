
import 'package:beared_friend/Admin%20Module/lib/screens/store/order/ordertabbarview/Cancelled/cancelled.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/store/order/ordertabbarview/Delivered/delivered.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/store/order/ordertabbarview/Pinding/pending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';

class Order extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Orders",
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
                        "Your Orders",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: textwhite.withOpacity(.38),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito"),
                      ),
                       Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: TabBar(
                            labelColor: textwhite,
                            unselectedLabelColor: textwhite.withOpacity(.60),
                            indicatorColor: textwhite.withOpacity(.87),
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text(
                                    "Pending",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text(
                                    "Delivered",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text(
                                    "Cancelled",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                              ),
                             
                            ]),
                      ),
                       SizedBox(
                      height: 670.h,
                      child: TabBarView(children: [Pending(),Delivered(),Cancelled()],)),
                  
                  ],
                
            
            ),
          ),
        ),
      ),
    );
  }

}