import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/contest_end_box.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../../Components/my_leader_board_box.dart';
import '../Participate View/participate_view.dart';
import '../View All/view_all.dart';

class BeardContest extends StatefulWidget {
  const BeardContest({Key? key}) : super(key: key);

  @override
  State<BeardContest> createState() => _BeardContestState();
}

class _BeardContestState extends State<BeardContest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: TKeys.Beard_Contest.translate(context),
                    // 'Beard Contest',
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
              CustomContainer2(
                h: 160.h,
                w: double.infinity,
                child: Center(
                    child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 125.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.first),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text16Regular(
                              text: TKeys.Your_Photo_Have_Got.translate(context)
                              // 'Your Photo Have Got',
                              ),
                          Text20(
                            text: '927 Votes',
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: AppColors.whiteColor,
                          ))
                    ],
                  ),
                )),
              ),
              SizedBox(height: 30.h),
              CustomButton(
                  title: TKeys.Add_New_Photo.translate(context),
                  // 'Add a New Photo',
                  onPress: () {
                    _showAlertDialog(context);
                  }),
              SizedBox(height: 30.h),
              const ContestEndBox(),
              SizedBox(height: 30.h),
              CustomButton(
                  title: TKeys.Participate_in_the_Contest.translate(context),
                  //  'Participate in the Contest',
                  onPress: () {
                    Get.to(() => const ParticipateView());
                  }),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text18Regular(
                      text: TKeys.Leader_Board.translate(context),
                      // 'Leader Board'
                      textColor: AppColors.grayText2),
                  CustomTextButton(
                    height: 35.h,
                    width: 85.w,
                    title: TKeys.View_All.translate(context),
                    // 'View All',
                    color: AppColors.buttonColor,
                    onTap: () {
                      Get.to(() => const ViewAll());
                    },
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              const MyLeaderBoardBox(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible:
          false, // Prevents dialog from being closed when tapped outside
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.dialogBoxColor,
          alignment: Alignment.center,
          insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
            child: SizedBox(
              width: double.infinity,
              height: 325.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text24(
                    text: TKeys.Add_New_Photo.translate(context),
                    //  'Add New Photo'
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text14(
                      text: TKeys.Important_Note.translate(context),
                      //  'Important Note:',
                      textColor: AppColors.grayText2),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text14(
                      text: TKeys.Cannot_Change_Photo.translate(context),
                      //  'You can not Change your Current Photo.',
                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text14(
                      text: TKeys.Must_Delete_Current_Photo.translate(context),
                      //  '⚈Must_Delete_Current_Photo.',
                      textColor: AppColors.grayText),
                  Text14(
                      text:
                          '⚈  Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.',
                      textColor: AppColors.grayText),
                  Text14(
                      text: '⚈ Cras dapibus. Vivamus elementum semper nisi. ',
                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grayText2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Cancel.translate(context),
                            //  'Cancel',
                            textColor: AppColors.grayText2,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          _showDeleteAlertDialog(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                              color: AppColors.deleteButton,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Cancel.translate(context),
                            // 'Delete',
                            textColor: AppColors.primaryText,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showDeleteAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible:
          false, // Prevents dialog from being closed when tapped outside
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.dialogBoxColor,
          alignment: Alignment.center,
          insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
            child: SizedBox(
              width: double.infinity,
              height: 325.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text24(
                    text: TKeys.Delete_Photo.translate(context),
                    // 'Delete Photo?'
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text14(
                      text: TKeys.Delete_Current_Photo_Confirmation.translate(
                          context),
                      // 'You Have Got 1127 Votes on your current Photo. Do you Really want to delete current Photo.',
                      textColor: AppColors.grayText2),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text14(
                      text: TKeys.After_Deleting.translate(context),
                      // 'After Deleting:',

                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text14(
                      text: TKeys.Lose_All_Votes.translate(context),
                      // '⚈ You will lose all your votes.',
                      textColor: AppColors.grayText),
                  Text14(
                      text: TKeys.Cannot_Recover_Photo.translate(context),
                      // '⚈  You Can not Recover your current photo once it gets Deleted.',
                      textColor: AppColors.grayText),
                  Text14(
                      text: '⚈ Cras dapibus. Vivamus elementum semper nisi.',
                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grayText2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Cancel.translate(context),
                            // 'Cancel',
                            textColor: AppColors.grayText2,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              color: AppColors.deleteButton,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Delete.translate(context),
                            //  'Delete',
                            textColor: AppColors.primaryText,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
