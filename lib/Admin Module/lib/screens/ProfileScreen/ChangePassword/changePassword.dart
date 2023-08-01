import 'package:beared_friend/Admin%20Module/lib/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Providers/ProfileProvider/change_password_provider.dart';
import '../../../Utils/app_constant.dart';
import '../../../utils/utils.dart';
import '../../../widgets/bottomNavigation.dart';

class AdminChangePassword extends StatefulWidget {

  const AdminChangePassword({super.key,});

  @override
  State<AdminChangePassword> createState() => _AdminChangePasswordState();
}
class _AdminChangePasswordState extends State<AdminChangePassword> {

  TextEditingController previousPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController cnfrmnewPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child:
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 68.h
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
                height: 36.h
              ),
              Text(
                "Change Password",
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
                "Change your Account Password",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 40.h
              ),
              Text(
                "Change Password",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 15.h
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
                    controller: previousPasswordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      hintText: "Current Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                      ),
                    ),
                    style: TextStyle(
                        color: textwhite.withOpacity(.38),
                        fontFamily: 'Montserrat',
                        fontSize: 14.sp),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter old Password";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.h
              ),
              Text(
                "New Password",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 15.h
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
                    controller: newPasswordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      hintText: "New Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                      ),
                    ),
                    style: TextStyle(
                        color: textwhite.withOpacity(.38),
                        fontFamily: 'Montserrat',
                        fontSize: 14.sp),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter New Password";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.h
              ),
              Text(
                "Confirm New Password",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 15.h
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
                    controller: cnfrmnewPasswordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: textwhite.withOpacity(.38),
                      ),
                      hintText: "Confirm New Password",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.38),
                      ),
                    ),
                    style: TextStyle(
                        color: textwhite.withOpacity(.38),
                        fontFamily: 'Montserrat',
                        fontSize: 14.sp),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm Password";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 279.h
              ),

              Consumer<AdminChangePasswordProvider>(
                builder: (context, provider, child) {
                  return InkWell(
                    onTap: () async {
                      final prefs = await SharedPreferences.getInstance();

                      if (_formKey.currentState!.validate()) {
                        final newPassword = newPasswordController.text.toString();
                        final confirmPassword = cnfrmnewPasswordController.text.toString();

                        if (newPassword != confirmPassword) {
                          // Passwords do not match
                          Utils().toastMassage('Passwords do not match');

                        } else {
                          provider.changePassword(
                            id: prefs.getString(AppConstants.saveUserID).toString(),
                            currentPassword: previousPasswordController.text.toString(),
                            newPassword: newPassword,
                            confirmPassword: confirmPassword,
                          );
                          Get.to(const BottomNavigation());
                        }
                      }
                    },
                    child: Container(
                      height: 60.h,
                      width: 378.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: btnbgpurple,
                      ),
                      child: Center(
                        child: Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: textwhite.withOpacity(.87),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )


            ]),
          ),
        ),
      ),
    );
  }
}
