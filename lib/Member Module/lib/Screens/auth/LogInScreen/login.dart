
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Providers/member_login_provider.dart';
import '../../../Utils/appimages.dart';
import '../../../Widgets/bottom_navigation_bar.dart';
import '../../../Widgets/custom_elevated_button_widget.dart';
import '../../../Widgets/custom_text_form_field_widget.dart';
import '../ForgetPassword/Forget_password.dart';
import '../SignUpScreen/Signup.dart';

// ignore: must_be_immutable
class MemberLoginScreen extends StatefulWidget {
  MemberLoginScreen({super.key});

  @override
  State<MemberLoginScreen> createState() => _MemberLoginScreenState();
}

class _MemberLoginScreenState extends State<MemberLoginScreen> {
  launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  final _formKey = GlobalKey<FormState>();

  Validate(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      Get.to(const AppNavigationBar());
    }
  }
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 91.h),
                  Image.asset(AppImages.logInLogo),
                  SizedBox(height: 18.h),
                  Text(
                    "Welcome Back",
                    style: GoogleFonts.nunito(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Please Login to your Account",
                    style: GoogleFonts.nunito(
                      color: AppColors.whiteGrayColors,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Container(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: CustomTextFormField(
                      labelText: "Email Address",
                      hintText: "Email Address",
                      icon: Icons.email,
                      Validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter your Email Address.";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: CustomTextFormField(
                      labelText: "Password",
                      hintText: "Password",
                      icon: Icons.lock,
                      icon1: Icons.visibility_off,
                      obscureText: true,
                      Validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your Password.";
                        } else if (value.length < 4) {
                          return "Password length should be 8.";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 188.0.w),
                    child: TextButton(
                      onPressed: () {
                        Get.to(Forget_Password());
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: AppColors.whiteGrayColors,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  CustomElevatedButton(
                      onPressed: () {
                        Get.to(AppNavigationBar());
                      },
                      label: "Login"),
                  // Consumer<AuthMemberProvider>(
                  //   builder: (context,provider,child){
                  //     return  CustomElevatedButton(
                  //         onPressed: () {
                  //           if (_formKey.currentState!.validate()) {
                  //             provider.login(
                  //               context: context,
                  //               password: passwordController.text.toString(),
                  //               email: emailController.text.toString(),
                  //             );
                  //           }
                  //         },
                  //         label: "Login");
                  //   },
                  // ),
                  SizedBox(height: 45.h),
                  Text(
                    "or Continue With",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteGrayColors,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 159.w,
                      ),
                      InkWell(
                        child: Image.asset(AppImages.facebookImg),
                        onTap: () {
                          const url = 'https://www.facebook.com/';
                        },
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        child: Image.asset(AppImages.googleImg),
                        onTap: () {
                          const url = 'https://www.google.com/';
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h, width: 96.w),
                  Wrap(
                    children: [
                      Text(
                        "Not have an Account? ",
                        style: TextStyle(
                            color: AppColors.whiteGrayColors,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SignUpScreen());
                        },
                        child: Text(
                          "Create One",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp),
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
    );
  }
}
