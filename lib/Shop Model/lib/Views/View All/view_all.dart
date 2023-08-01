import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Constants/App Text/text.dart';
import '../../Components/contest_end_box.dart';
import '../../Components/my_leader_board_box.dart';
import '../Participate View/participate_view.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'All Members',
                  )),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: TKeys.Participate_in_the_Contest.translate(context),
                  // 'Participate in the Contest',
                ),
              ),
              SizedBox(height: 30.h),
              const MyLeaderBoardBox(),
            ],
          ),
        ),
      ),
    );
  }
}
