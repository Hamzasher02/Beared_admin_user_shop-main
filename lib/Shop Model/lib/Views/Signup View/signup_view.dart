import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:beared_friend/Admin%20Module/lib/widgets/textfield.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../Login View/login_view.dart';
import 'Providers/signup_policy_check_box_provider.dart';
import 'Providers/signup_terms_check_box_provider.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  bool isCheck = false;
  bool isCheck2 = false;

  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier<bool>(true);

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final userNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 90.h),
                  Image.asset(AppImages.mainLogo2),
                  SizedBox(height: 25.h),
                  Text24(
                    text: TKeys.Creat_Account.translate(context),
                    // 'Create Account'
                  ),
                  SizedBox(height: 5.h),
                  Text16Medium(
                    text:
                        TKeys.Please_Signup_to_your_Account.translate(context),
                    //  'Please Signup  to your Account',
                  ),
                  SizedBox(height: 90.h),
                  CustomTextField(
                    controller: userNameController,
                    focusNode: userNameFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.text,
                    obscureText: false,
                    hint: TKeys.User_name.translate(context),
                    // 'Username',
                    prefixIcon: const Icon(Icons.person_2_outlined),
                  ),
                  SizedBox(height: 25.h),
                  CustomTextField(
                    controller: emailController,
                    focusNode: emailFocusNode,
                    onFieldSubmittedValue: (newValue) {},
                    keyBoardType: TextInputType.emailAddress,
                    obscureText: false,
                    hint: TKeys.Email_Address.translate(context),
                    // 'Email Address',
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  SizedBox(height: 25.h),
                  ValueListenableBuilder(
                      valueListenable: _obscurePassword,
                      builder:
                          (BuildContext context, bool value, Widget? child) {
                        return CustomTextField(
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                          onFieldSubmittedValue: (newValue) {},
                          keyBoardType: TextInputType.text,
                          obscureText: _obscurePassword.value,
                          hint: TKeys.Password.translate(context),
                          // 'Password',
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: InkWell(
                              onTap: () {
                                _obscurePassword.value =
                                    !_obscurePassword.value;
                              },
                              child: Icon(
                                _obscurePassword.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                size: 20,
                              )),
                        );
                      }),
                  SizedBox(height: 25.h),
                  ValueListenableBuilder(
                      valueListenable: _obscureConfirmPassword,
                      builder:
                          (BuildContext context, bool value, Widget? child) {
                        return CustomTextField(
                          controller: confirmPasswordController,
                          focusNode: confirmPasswordFocusNode,
                          onFieldSubmittedValue: (newValue) {},
                          keyBoardType: TextInputType.text,
                          obscureText: _obscureConfirmPassword.value,
                          hint: TKeys.Conform_Password.translate(context),
                          // 'Confirm Password',
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: InkWell(
                              onTap: () {
                                _obscureConfirmPassword.value =
                                    !_obscureConfirmPassword.value;
                              },
                              child: Icon(
                                _obscureConfirmPassword.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                size: 20,
                              )),
                        );
                      }),
                  SizedBox(height: 75.h),
                  CustomButton(
                    title: TKeys.Creat_Account.translate(context),
                    //  'Create Account',
                    onPress: () {
                      _showAlertDialog(context);
                      // showDialog();
                    },
                  ),
                  SizedBox(height: 45.h),
                  InkWell(
                    onTap: () {
                      Get.off(() => const ShopLoginView());
                    },
                    child: Text.rich(TextSpan(
                        text: TKeys.Already_Have_Account.translate(context),
                        // "Already have an account? ",
                        style: TextStyle(
                            fontFamily: AppFonts.nunitoRegular,
                            color: AppColors.grayText,
                            fontSize: 12),
                        children: [
                          TextSpan(
                            text: TKeys.Login.translate(context),
                            // 'Login',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 12,
                              fontFamily: AppFonts.nunitoBold,
                              letterSpacing: 0.2,
                            ),
                          )
                        ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible:
          false, // Prevents dialog from being closed when tapped outside
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.dialogBoxColor,
          alignment: Alignment.center,
          insetPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 25.h),
            child: SizedBox(
              width: double.infinity,
              height: 290,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Text18Regular(
                      text: 'GDPR and General Terms & Conditions',
                      textColor: AppColors.primaryText,
                    ),
                  ),
                  Row(
                    children: [
                      Consumer<SignupPolicyCheckBoxProvider>(builder:
                          (context, signupPolicyCheckBoxProvider, child) {
                        return Checkbox(
                            side: BorderSide(color: AppColors.floatingButton),
                            value: signupPolicyCheckBoxProvider.isChecked,
                            activeColor: AppColors.floatingButton,
                            onChanged: (newValue) {
                              signupPolicyCheckBoxProvider.toggleCheckbox();
                            });
                      }),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'I Agree & Accept ',
                                style: TextStyle(
                                    fontFamily: AppFonts.nunitoSemiBold,
                                    fontSize: 14.sp,
                                    color: AppColors.primaryText,
                                    decoration: TextDecoration.none)),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  color: AppColors.floatingButton,
                                  fontSize: 16,
                                  fontFamily: AppFonts.nunitoRegular,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Consumer<SignupTermsCheckBoxProvider>(builder:
                          (context, signupTermsCheckBoxProvider, child) {
                        return Checkbox(
                            side: BorderSide(color: AppColors.floatingButton),
                            value: signupTermsCheckBoxProvider.isChecked,
                            activeColor: AppColors.floatingButton,
                            onChanged: (newValue) {
                              signupTermsCheckBoxProvider.toggleCheckBox();
                            });
                      }),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'I Agree & Accept ',
                                style: TextStyle(
                                    fontFamily: AppFonts.nunitoSemiBold,
                                    fontSize: 14.sp,
                                    color: AppColors.primaryText,
                                    decoration: TextDecoration.none)),
                            TextSpan(
                              text: 'General Terms & Conditions',
                              style: TextStyle(
                                  color: AppColors.floatingButton,
                                  fontSize: 16,
                                  fontFamily: AppFonts.nunitoRegular,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  const Text16Medium(
                      text:
                          'Make Sure you have read our Terms & Condition before Continue to the app.'),
                  SizedBox(height: 35.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
