import 'dart:io';

import 'package:beared_friend/Admin%20Module/lib/screens/AdminPrivacyScreen/PrivacyPolicy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../Auth/LogInScreen/login.dart';
import 'EditProfile/editProfile.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({super.key});

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  bool load = false;
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 405.h,
            width: 428.w,
            child: Stack(
              children: [
                Image.asset(
                  beard,
                  fit: BoxFit.fill,
                  width: 428.w,
                ),
                Image.asset(
                  shade,
                  fit: BoxFit.fill,
                  width: 428.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 67.h, left: 362.w),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=>EditProfile(

                      ));
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: iconbg,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: iconwhite,
                      ),
                    ),
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(top: 192.h, left: 149.w,right: 149.w),
                   child: Container(
                              height: 130.h,
                              width: 130.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200.r),
                                  border: Border.all(
                                      width: 1,
                                      color: textwhite.withOpacity(.38)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      beard,
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                 ),
                Padding(
                  padding: EdgeInsets.only(top: 350.h, left: 143.w),
                  child: Text(
                    "Andre Genze",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: textwhite.withOpacity(.87),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 383.h, left: 182.w),
                  child: Text(
                    "@Admin",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: textwhite.withOpacity(.60),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>const PrivacyScreen());
                  },
                  child: Container(
                    height: 80.h,
                    width: 378.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: containerbg),
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.h,
                            decoration: BoxDecoration(
                                color: textwhite,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: const Center(
                              child: Icon(
                                Icons.security,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Text(
                            "Privacy & Security",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.60),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,color: iconwhite.withOpacity(.60),size: 20.sp,),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                 InkWell(
                   onTap: ()async{
                     final prefs = await SharedPreferences.getInstance();
                     prefs.remove('access_token');
                     Get.offAll(const LoginAdminView());
                     Get.snackbar(
                       "Message",
                       "Successfully Logout",
                       dismissDirection:
                       DismissDirection.horizontal,
                       isDismissible: true,
                       backgroundColor:Colors.orangeAccent,
                       duration: const Duration(seconds: 3),
                       icon: const Icon(Icons.error_outline,
                         color: Colors.red,
                       ),
                     );
                   },
                   child: Container(
                    height: 80.h,
                    width: 378.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: btnbgred),
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.h,
                            decoration: BoxDecoration(
                                color: textwhite,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: const Center(
                              child: Icon(
                                Icons.logout_rounded,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.87),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          ),

                        ],
                      ),
                    ),
                ),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
