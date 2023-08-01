import 'package:beared_friend/Member%20Module/lib/Widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                      height: 40.h,
                      width: 20.w,
                      decoration: const BoxDecoration(color: Colors.transparent),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context,);
                    },
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "Forget Password",
                    style:
                    TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Forget your Account Password",
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Enter your Email",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    labelText: "Enter Your Email",
                    hintText: "enter your email",
                    icon1: Icons.visibility_off_outlined,
                    obscureText: true,
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomElevatedButton(
                      onPressed: () {
                        // Get.to(Security());
                      },
                      label: "Change Password"),
                  // Consumer<ChangePasswordProvider>(
                  //   builder:  (context ,provider, child){
                  //     return   CustomElevatedButton(label: "Change Password", onPressed: () {
                  //       if (_formKey.currentState!.validate()) {
                  //         provider.changePassword(
                  //           context: context,
                  //           password: currentPassController.text.toString(),
                  //           email: newPassController.text.toString(),
                  //         );
                  //       }
                  //
                  //     },
                  //     );
                  //   },
                  // ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
