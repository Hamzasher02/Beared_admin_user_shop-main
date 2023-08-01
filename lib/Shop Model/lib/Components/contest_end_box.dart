import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../App Constants/App Colors/app_colors.dart';
import '../App Constants/App Text/text.dart';
import 'custom_container2.dart';


class ContestEndBox extends StatelessWidget {
  const ContestEndBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer2(
      h: 165.h,
      w: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 17.h,),
          Text18Regular(
              text: 'Contest Ends in',
              textColor: AppColors.primaryText),
          SizedBox(
            height: 120.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 5,
                  animation: true,
                  percent: 0.7,
                  center: Text18Regular(
                      text: '2d', textColor: AppColors.primaryText),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundWidth: 2,
                  progressColor: AppColors.buttonColor,
                ),
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 5,
                  animation: true,
                  percent: 0.3,
                  center: Text18Regular(
                      text: '8h', textColor: AppColors.primaryText),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundWidth: 2,
                  progressColor: AppColors.buttonColor,
                ),
                CircularPercentIndicator(
                  radius: 30,
                  lineWidth: 5,
                  animation: true,
                  percent: 0.2,
                  center: Text18Regular(
                      text: '45m', textColor: AppColors.primaryText),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundWidth: 2,
                  progressColor: AppColors.buttonColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}