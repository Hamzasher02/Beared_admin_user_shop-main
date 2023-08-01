
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Admin Module/lib/widgets/textfield.dart';

class DoubleTextField extends StatelessWidget {
  final TextEditingController controller1, controller2;
  final FocusNode focusNode1, focusNode2;
  final String? hint1, hint2;
  final Icon? prefixIcon1,prefixIcon2, suffixIcon1, suffixIcon2;
  final void Function(dynamic) onFieldSubmittedValue1, onFieldSubmittedValue2;
  const DoubleTextField(
      {Key? key,
      required this.controller1,
      required this.focusNode1,
      required this.onFieldSubmittedValue1,
      required this.controller2,
      required this.focusNode2,
      required this.onFieldSubmittedValue2,
        this.hint1, this.hint2, this.prefixIcon1, this.suffixIcon2, this.prefixIcon2, this.suffixIcon1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: CustomTextField(
          controller: controller1,
          focusNode: focusNode1,
          onFieldSubmittedValue: onFieldSubmittedValue1,
          keyBoardType: TextInputType.text,
          obscureText: false,
          hint: hint1,
              prefixIcon: prefixIcon1,
              suffixIcon: suffixIcon1,
        )),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
            child: CustomTextField(
          controller: controller2,
          focusNode: focusNode2,
          onFieldSubmittedValue: onFieldSubmittedValue2,
          keyBoardType: TextInputType.text,
          obscureText: false,
          hint: hint2,
              prefixIcon: prefixIcon2,
              suffixIcon: suffixIcon2,
        )),
      ],
    );
  }
}
