import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';
import 'double_text_field.dart';

class ManualTimeAdding extends StatefulWidget {
  const ManualTimeAdding({Key? key}) : super(key: key);

  @override
  State<ManualTimeAdding> createState() => _ManualTimeAddingState();
}

class _ManualTimeAddingState extends State<ManualTimeAdding> {
  final mondayOpeningController = TextEditingController();
  final tuesdayOpeningController = TextEditingController();
  final wednesdayOpeningController = TextEditingController();
  final thursdayOpeningController = TextEditingController();
  final fridayOpeningController = TextEditingController();
  final saturdayOpeningController = TextEditingController();

  final mondayClosingController = TextEditingController();
  final tuesdayClosingController = TextEditingController();
  final wednesdayClosingController = TextEditingController();
  final thursdayClosingController = TextEditingController();
  final fridayClosingController = TextEditingController();
  final saturdayClosingController = TextEditingController();

  final mondayOpeningFocusNode = FocusNode();
  final tuesdayOpeningFocusNode = FocusNode();
  final wednesdayOpeningFocusNode = FocusNode();
  final thursdayOpeningFocusNode = FocusNode();
  final fridayOpeningFocusNode = FocusNode();
  final saturdayOpeningFocusNode = FocusNode();

  final mondayClosingFocusNode = FocusNode();
  final tuesdayClosingFocusNode = FocusNode();
  final wednesdayClosingFocusNode = FocusNode();
  final thursdayClosingFocusNode = FocusNode();
  final fridayClosingFocusNode = FocusNode();
  final saturdayClosingFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 720.h,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text18Regular(text: 'Monday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: mondayOpeningController,
            focusNode1: mondayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: mondayClosingController,
            focusNode2: mondayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
          SizedBox(height: 15.h),
          Text18Regular(text: 'Tuesday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: tuesdayOpeningController,
            focusNode1: tuesdayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: tuesdayClosingController,
            focusNode2: tuesdayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
          SizedBox(height: 15.h),
          Text18Regular(text: 'Wednesday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: wednesdayOpeningController,
            focusNode1: wednesdayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: wednesdayClosingController,
            focusNode2: wednesdayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
          SizedBox(height: 15.h),
          Text18Regular(text: 'Thursday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: thursdayOpeningController,
            focusNode1: thursdayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: thursdayClosingController,
            focusNode2: thursdayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
          SizedBox(height: 15.h),
          Text18Regular(text: 'Friday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: fridayOpeningController,
            focusNode1: fridayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: fridayClosingController,
            focusNode2: fridayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
          SizedBox(height: 15.h),
          Text18Regular(text: 'Saturday', textColor: AppColors.grayText2),
          SizedBox(height: 15.h),
          DoubleTextField(
            controller1: saturdayOpeningController,
            focusNode1: saturdayOpeningFocusNode,
            onFieldSubmittedValue1: (newValue1) {},
            hint1: 'Opening Time',
            controller2: saturdayClosingController,
            focusNode2: saturdayClosingFocusNode,
            onFieldSubmittedValue2: (newValue2) {},
            hint2: 'Closing Time',
          ),
        ],
      ),
    );
  }
}
