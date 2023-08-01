
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator? onValidator;
  final VoidCallback? onTap;
  final TextStyle? fontStyle;

  final TextInputType keyBoardType;
  final String? hint;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? enable;
  final bool autoFocus;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.focusNode,
      required this.onFieldSubmittedValue,
        this.onTap,
      required this.keyBoardType,
      required this.obscureText,
      this.hint,
        this.fontStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.enable,
        this.onValidator,
      this.autoFocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: height * .08,
        width: double.infinity,
        decoration: BoxDecoration(
          color: containerbg,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            obscureText: obscureText,
            onFieldSubmitted: onFieldSubmittedValue,
            validator: onValidator,

            enabled: enable,
            onTap: onTap,
            keyboardType: keyBoardType,
            cursorColor:  iconwhite.withOpacity(.38),
            style: TextStyle(color:  iconwhite.withOpacity(.38)),
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              prefixIconColor: iconwhite.withOpacity(.38),
              suffixIconColor: iconwhite,
              hintText: hint,
              hintStyle: TextStyle(color:  textwhite.withOpacity(.38), fontFamily: "nunitoRegular"),
              contentPadding: const EdgeInsets.all(18),
              border: InputBorder.none,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  BorderSide(color:  iconwhite.withOpacity(.38), width: 1)),
            ),
          ),
        ),
      ),
    );
  }
}