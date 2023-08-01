import 'package:beared_friend/Member%20Module/lib/Screens/ProfileScreen/ProfileScreenComponents/security.dart';
import 'package:beared_friend/Member%20Module/lib/Screens/shopping%20screens/delivery_screen.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Utils/app_colors.dart';
import '../../../Widgets/custom_elevated_button_widget.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final currentPassController = TextEditingController();
  final newPassController = TextEditingController();
  final confPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  Widget myRow({required String title, required name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColors.whiteGrayColors),
        ),
        Text(
          name,
          style: const TextStyle(color: AppColors.white60Colors),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                      height: 40.h,
                      width: 20.w,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Delivery(),
                          ));
                    },
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    "Change Password",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Change your Account Password",
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Current Password",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    controller: confPassController,
                    labelText: "Current Password",
                    hintText: "Current Password",
                    icon1: Icons.visibility_off_outlined,
                    obscureText: true,
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "New Password",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                   CustomTextFormField(
                    controller: newPassController,
                    labelText: "New Password",
                    hintText: "New Password",
                    icon1: Icons.visibility_off_outlined,
                    obscureText: true,
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    controller: confPassController,
                    labelText: "Confirm Password",
                    hintText: "Confirm Password",
                    icon1: Icons.visibility_off_outlined,
                    obscureText: true,
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomElevatedButton(
                      onPressed: () {
                        Get.to(Security());
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
