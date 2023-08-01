import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/images.dart';

class Delivered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      SizedBox(height: 30.h),
       Container(
                height: 60.h,
                width: 378.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: containerbg),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
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
                    
                  ),
                ),
              ),
                SizedBox(height: 30.h),
              SizedBox(
                height: 550.h,
    child: ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
      return Padding(
        padding:  EdgeInsets.only(bottom: 20.h),
        child: Container(
         height: 250.h,
        width: 378.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: containerbg,
        ),
        child: Padding(
          padding:  EdgeInsets.all(20.h),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(productpic,height: 60.h,width: 60.h,),
                   SizedBox(width: 20.w,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Comb & Scissors",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: textwhite.withOpacity(.87),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito"),
                      ),
                      SizedBox(height: 5.h,),
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
              ) ,
               SizedBox(height: 17.h,),
             Row(
                   children: [
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                              "Status",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito"),
                            ),
                            SizedBox(height: 10.h,),
                             Text(
                              "Order No.",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito"),
                            ),
                            SizedBox(height: 10.h,),
                             Text(
                              "Time",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito"),
                            ),
                            SizedBox(height: 10.h,),
                             Text(
                              "Items",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito"),
                            ),
                            SizedBox(height: 10.h,),
                             Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito"),
                            ),
                      ],
                     ),
                     Spacer(),
                     Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pending",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(height: 10.h,),
                         Text(
                          "1541234541",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(height: 10.h,),
                          Text(
                          "11/11/23 15:45",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(height: 10.h,),
                         Text(
                          "09",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(height: 10.h,),
                         Text(
                          "\$23.21",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                  
                      ],
                     )
                   ],
                 ),     
            ],
          ),
        ),
        ),
      );
    },),        
   )
    ],
    
   );
  }

}