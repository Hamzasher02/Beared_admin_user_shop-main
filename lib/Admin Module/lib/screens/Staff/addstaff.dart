
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Providers/BeardContestProvider/add_new_staff_provider.dart';
import '../../utils/colors.dart';

class AddStaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    bool loading= false;

    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 71.h
                ),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: iconwhite,
                      size: 20.sp,
                    )),
                  SizedBox(
                    height: 34.h
                  ),
                  Text(
                    "Add Staff",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: textwhite.withOpacity(.87),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 5.h
                  ),
                  Text(
                    "Fill the Blank to Add",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(
                    height: 30.h
                  ),
                Text(
                  "Staff Email",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: textwhite.withOpacity(.60),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito"),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 60.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: textwhite.withOpacity(.38),
                        ),
                        hintText: "Email Address",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          color: textwhite.withOpacity(.38),
                        ),
                      ),
                      style: TextStyle(
                          color: textwhite,
                          fontFamily: 'Montserrat',
                          fontSize: 14.sp),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 492.h,),
                Consumer<AddNewStaffProvider>(
                  builder: (context,provider,child){
                 return  InkWell(
                      onTap: (){
                        if (_formKey.currentState!.validate()) {
                          provider.staffAdded(
                            context: context,
                           email: emailController.text.toString()
                          );
                        }
                      },
                      child: Container(
                        height: 60.h,
                        width: 378.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: btnbgpurple),
                        child: Center(
                          child: Text(
                            "Invite",
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: textwhite.withOpacity(.87),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
