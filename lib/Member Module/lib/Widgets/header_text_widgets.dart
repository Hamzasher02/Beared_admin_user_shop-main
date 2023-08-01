
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class HeaderTextWidgets extends StatelessWidget {
  final String title;
  const HeaderTextWidgets({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,style: GoogleFonts.nunito(
            fontSize: 18.sp,
            color: AppColors.white60Colors,
          ),
        ),
      ],
    );
  }
}
