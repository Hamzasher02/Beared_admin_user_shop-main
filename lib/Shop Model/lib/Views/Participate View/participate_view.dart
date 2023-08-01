import 'package:beared_friend/t_key.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/contest_end_box.dart';
import 'Providers/rules_check_box_provider.dart';
import 'Providers/terms_check_box_provider.dart';

class ParticipateView extends StatefulWidget {
  const ParticipateView({Key? key}) : super(key: key);

  @override
  State<ParticipateView> createState() => _ParticipateViewState();
}

class _ParticipateViewState extends State<ParticipateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 13,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: TKeys.Participants.translate(context),
                    //  'Participate',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'How to participate in the Contest',
                ),
              ),
              SizedBox(height: 40.h),
              const ContestEndBox(),
              SizedBox(height: 30.h),
              Text18Regular(
                  text: 'Description', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              const Text16Regular(
                  text:
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),
              SizedBox(height: 20.h),
              Text18Regular(text: 'Advantages', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              const Text16Regular(
                  text:
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.'),
              SizedBox(height: 20.h),
              Text18Regular(
                  text: 'How to Join?', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              const Text16Regular(text: 'The Steps are Given Below.'),
              const Text16Regular(
                  text: '⚈  Here  ipsum dolor sit amet, consectetuer.'),
              const Text16Regular(
                  text:
                      '⚈  Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.'),
              const Text16Regular(
                  text: '⚈  Cras dapibus. Vivamus elementum semper nisi. '),
              SizedBox(height: 30.h),
              CustomButton(
                  title: 'Continue To Participate',
                  onPress: () {
                    _showAlertDialog(context);
                    // showContestDialog();
                  }),
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
              height: 490,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text24(
                    text: TKeys.Participants.translate(context),
                    //  'Participate'
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text16Regular(text: 'Upload Photo'),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      DottedBorder(
                          color: AppColors.grayText,
                          radius: const Radius.circular(10),
                          dashPattern: const [5],
                          child: Container(
                            height: 95.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(AppImages.img),
                          )),
                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text14(
                              text: 'Upload Your Photo Here',
                              textColor: AppColors.grayText2),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 170.w,
                            child: Text12(
                                text:
                                    'You must Upload at least 1 Photo of type .jpg or .png ',
                                textColor: AppColors.grayText),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text14(
                      text: 'Rules for Participaiton',
                      textColor: AppColors.grayText2),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text14(
                      text:
                          'You Must follow the rules to participate in the contest.',
                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text14(
                      text: '⚈ Here  ipsum dolor sit amet, consectetuer.',
                      textColor: AppColors.grayText),
                  Text14(
                      text:
                          '⚈ Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.',
                      textColor: AppColors.grayText),
                  Text14(
                      text: '⚈ Cras dapibus. Vivamus elementum semper nisi. ',
                      textColor: AppColors.grayText),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Consumer<RulesCheckBoxProvider>(
                          builder: (context, rulesCheckBoxProvider, child) {
                        return Checkbox(
                            side: BorderSide(color: AppColors.grayText2),
                            value: rulesCheckBoxProvider.isChecked,
                            activeColor: AppColors.buttonColor,
                            onChanged: (newValue) {
                              rulesCheckBoxProvider.toggleCheckBox();
                            });
                      }),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'I Agree & Accept All ',
                              style: TextStyle(
                                  fontFamily: AppFonts.nunitoRegular,
                                  fontSize: 14.sp,
                                  color: AppColors.grayText,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'Rules',
                              style: TextStyle(
                                  fontFamily: AppFonts.nunitoRegular,
                                  fontSize: 14.sp,
                                  color: AppColors.buttonColor,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Consumer<TermsCheckBoxProvider>(
                          builder: (context, termsCheckBoxProvider, child) {
                        return Checkbox(
                            side: BorderSide(color: AppColors.grayText2),
                            value: termsCheckBoxProvider.isChecked,
                            activeColor: AppColors.buttonColor,
                            onChanged: (newValue2) {
                              termsCheckBoxProvider.toggleCheckBox();
                            });
                      }),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'I Agree & Accept ',
                              style: TextStyle(
                                  fontFamily: AppFonts.nunitoRegular,
                                  fontSize: 14.sp,
                                  color: AppColors.grayText,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'General Terms & Conditions',
                              style: TextStyle(
                                  fontFamily: AppFonts.nunitoRegular,
                                  fontSize: 14.sp,
                                  color: AppColors.buttonColor,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grayText2),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: 'Discard',
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
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                              color: AppColors.buttonColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Add.translate(context),
                            // 'Add',
                            textColor: AppColors.primaryText,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
