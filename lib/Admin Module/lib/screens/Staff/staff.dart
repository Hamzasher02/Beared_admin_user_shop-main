
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import 'addstaff.dart';

class Staff extends StatelessWidget {
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
                "Staff",
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
                "Manage Your Staff",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 100.h,
                width: 378.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: containerbg),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        height: 70.h,
                        width: 70.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: textwhite),
                        child: Image.asset(profile),
                      ),
                    ),
                    SizedBox(
                      width: 25.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          "Aidda Aidaa",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "ID 545745124",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40.h,
                          width: 71.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: btnbgred),
                          child: Center(
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.87),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Nunito"),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 20.h,
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 450.h,
              ),
               Row(mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                    onTap: () {
                      Get.to(()=>AddStaff());
                    },
                     child: Container(
                       height: 60.h,
                       width: 60.h,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40.r),
                         color: btnbgpurple
                       ),
                       child: Center(
                         child: Icon(Icons.add,color: iconwhite,),
                       ),
                     ),
                   ),
                 ],
               ),
            ],
          ),
        ),
      ),
    );
  }
}
