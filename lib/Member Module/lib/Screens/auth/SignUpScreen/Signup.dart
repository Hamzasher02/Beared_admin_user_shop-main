
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Utils/appimages.dart';
import '../../../Widgets/custom_text_form_field_widget.dart';
import '../LogInScreen/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _box1value = false;
  bool _box2value = false;
  bool box1 = false;
  bool box2 = false;

  void _ShowDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        insetPadding: EdgeInsets.all(11.h),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Text(
          "GDPR and General Terms & Conditions",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
        actions: [
          SizedBox(
            height: 60.h,
            width: 151.w,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_box1value == true && _box2value == true) {
                    Get.to(MemberLoginScreen());
                    setState(() {
                      _box1value = false;
                      _box2value = false;
                    });
                  } else {
                    Fluttertoast.showToast(
                      msg: "Read Terms & Conditions",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: AppColors.purpleAccentColors,
                      textColor: Colors.white,
                      fontSize: 18.0,
                    );
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purpleAccentColors,
                shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: AppColors.textWhiteColors,
                ),
              ),
            ),
          ),
        ],
        content: Container(
          height: 200.h, //width:270.w,
          child: Column(
            children: [
              Row(
                children: [
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Checkbox(
                        value: _box1value,
                        activeColor: AppColors.purpleAccentColors,
                        onChanged: (bool? box1) {
                          setState(() {
                            _box1value = box1!;
                          });
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity:
                            VisualDensity.compact, // Set size to shrinkWrap
                      );
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'I Agree & Accept ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.white60Colors,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.purpleAccentColors,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Checkbox(
                      value: _box2value,
                      activeColor: AppColors.purpleAccentColors,
                      onChanged: (bool? box2) {
                        setState(() {
                          _box2value = box2!;
                        });
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // Set size to shrinkWrap
                      visualDensity: VisualDensity.compact,
                    );
                  }),
                  RichText(
                    text: TextSpan(
                      text: 'I Agree & Accept ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white60,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'General Terms &\nConditions',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.purpleAccentColors,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Make Sure you have read our Terms &\nCondition before Continue to the app.",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.white38Colors,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final _formkey = GlobalKey<FormState>();
  Validate(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      _ShowDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Image.asset(AppImages.logInLogo),
                    SizedBox(height: 10.h),
                    Text(
                      "Create Account",
                      style: GoogleFonts.nunito(
                          fontSize: 24.sp,
                          color: AppColors.textWhiteColors,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Please Signup to your Account",
                      style: GoogleFonts.nunito(
                          color: AppColors.white38Colors, fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: CustomTextFormField(
                        labelText: "Username",
                        hintText: "Username",
                        icon: Icons.person,
                        Validate: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Name.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: CustomTextFormField(
                        labelText: "Email Address",
                        hintText: "Email Address",
                        icon: Icons.email,
                        Validate: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Email Address.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: CustomTextFormField(
                        labelText: "Password",
                        hintText: "Password",
                        icon: Icons.lock,
                        obscureText: true,
                        icon1: Icons.visibility_off,
                        Validate: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Password.";
                          } else if (value.length < 8) {
                            return "Password length should be 8.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: CustomTextFormField(
                        labelText: "Confirm Password",
                        hintText: "Confirm Password",
                        icon: Icons.lock,
                        obscureText: true,
                        icon1: Icons.visibility_off,
                        Validate: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter your Password.";
                          } else if (value.length < 8) {
                            return "Password length should be 8.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 50.h),
                    CustomElevatedButton(
                        onPressed: () => Validate(context),
                        label: "Create Account"),
                    SizedBox(
                      height: 18.h,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Already have an Account? ",
                          style: TextStyle(
                            color: AppColors.whiteGrayColors,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(MemberLoginScreen());
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: AppColors.whiteGrayColors,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 49.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
