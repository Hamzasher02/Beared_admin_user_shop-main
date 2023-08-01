import 'package:beared_friend/Admin%20Module/lib/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:beared_friend/Shop%20Model/lib/Components/custom_button.dart';
import 'package:beared_friend/Shop%20Model/lib/Components/custom_text_field.dart';
import 'package:beared_friend/Member%20Module/lib/Screens/ProfileScreen/ProfileScreenComponents/change_password.dart';
import 'package:provider/provider.dart';
import '../../../Providers/login_provider.dart';
import '../../../utils/colors.dart';
import '../ForgetPassword/forget_password.dart';

class LoginAdminView extends StatefulWidget {
  const LoginAdminView({Key? key}) : super(key: key);

  @override
  State<LoginAdminView> createState() => _LoginAdminViewState();
}
class _LoginAdminViewState extends State<LoginAdminView> {
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 91.h),
                  Image.asset(logo, height: 75.h, width: 86.w,),
                  SizedBox(height: Get.height * .025),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: textwhite.withOpacity(.87),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(height: Get.height * .005),
                  Text(
                    "Please Login to your Account",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito"),
                  ),
                  SizedBox(height: Get.height * .09),
                  CustomTextField(
                    controller: emailController,
                    focusNode: emailFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.emailAddress,
                    obscureText: false,
                    hint: 'Email Address',
                    // errorText: snapshot.error == null
                    //     ? ""
                    //     : snapshot.error.toString(),
                    prefixIcon: const Icon(Icons.email_outlined),
                    onChange: (value){
                    },
                  ),
                  SizedBox(height: Get.height * .025),
                  ValueListenableBuilder(
                      valueListenable: _obscurePassword,
                      builder: (BuildContext context, bool value, Widget? child) {
                        return CustomTextField(
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                          onFieldSubmittedValue: (newValue) {},
                          onChange: (value){
                          },
                          keyBoardType: TextInputType.text,
                          obscureText: _obscurePassword.value,
                          hint: 'Password',
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: InkWell(
                              onTap: () {
                                _obscurePassword.value = _obscurePassword.value;
                              },
                              child: Icon(
                                _obscurePassword.value
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 20,
                            ),
                          ),
                        );
                      }),
                  SizedBox(height: Get.height * .02),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(const ForgetPassword());
                      },
                      child: Text(
                        "Forget Password?",
                          style: TextStyle(
                          fontSize: 18.sp,
                          color: textwhite.withOpacity(.60),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Nunito",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * .075),
                  Consumer<AuthProvider>(
                   builder:  (context ,provider, child){
                    return   CustomButton(title: 'Login', onPress: () {
                      if (_formKey.currentState!.validate()) {
                        provider.login(
                          context: context,
                          password: passwordController.text.toString(),
                          email: emailController.text.toString(),
                        );
                      }
                        },
                      );
                    },
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
