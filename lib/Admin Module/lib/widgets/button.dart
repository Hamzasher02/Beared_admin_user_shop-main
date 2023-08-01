
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const CustomButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: Get.height * .08,
        // width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
            color: btnbgpurple, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3, color: textwhite.withOpacity(.60))
              : Text(
                  title,
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: textwhite.withOpacity(.87),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Nunito"),
                ),
        ),
      ),
    );
  }
}
