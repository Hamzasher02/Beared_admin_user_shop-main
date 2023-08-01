import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../../../Admin Module/lib/widgets/textfield.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Text/text.dart';

class AddStaffView extends StatefulWidget {
  const AddStaffView({Key? key}) : super(key: key);

  @override
  State<AddStaffView> createState() => _AddStaffViewState();
}

class _AddStaffViewState extends State<AddStaffView> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h),
            Align(
                alignment: Alignment.topLeft,
                child: Text24(
                  text: TKeys.Add_Staff.translate(context)
                  //  'Add Staff'
                  ,
                )),
            SizedBox(height: 5.h),
            Align(
              alignment: Alignment.topLeft,
              child: Text16Medium(
                  text: TKeys.Fill_the_Blank_to_Add.translate(context)
                  // 'Fill the Blanks to Add',
                  ),
            ),
            SizedBox(height: 40.h),
            Text18Regular(
                text: TKeys.Staff_Email.translate(context),
                // 'Staff Email',
                textColor: AppColors.grayText2),
            SizedBox(height: 20.h),
            CustomTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              onFieldSubmittedValue: (newValue) {},
              keyBoardType: TextInputType.emailAddress,
              obscureText: false,
              hint: TKeys.Email_Address.translate(context),
              //  'Email Address',
              prefixIcon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 200.h),
            CustomButton(
                title: TKeys.Invite.translate(context),
                // 'Invite'
                onPress: () {})
          ],
        ),
      ),
    );
  }
}
