import 'package:beared_friend/Admin%20Module/lib/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../ProfileScreen/ChangePassword/changePassword.dart';

class PrivacyScreen extends StatelessWidget{
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: background,
    body: SingleChildScrollView(child: Padding(
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
                        "Privacy & Security",
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
                        "Protect Your Account",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: textwhite.withOpacity(.38),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito"),
                      ),
                      SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: 80.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Row(
                      children: [
                      
                        SizedBox(width: 15.w,),
                        Text(
                          "Change Password",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(()=> AdminChangePassword(

                            ));
                          },
                          child: Icon(Icons.arrow_forward_ios_outlined,color: iconwhite.withOpacity(.60),size: 20.sp,)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 80.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Row(
                      children: [
                        
                        SizedBox(width: 15.w,),
                        Text(
                          "Data Privacy",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        const Spacer(),
                        Icon(Icons.privacy_tip_rounded,
                          color: iconwhite.withOpacity(.60),
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
     )
    ),
   );
  }

}