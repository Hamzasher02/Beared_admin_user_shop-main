import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_button.dart';
import '../../Components/double_text_field.dart';
import '../../Components/manual_time_adding.dart';
import '../Pricing View/pricing_view.dart';
import 'Providers/days_dropdown_provider.dart';
import 'Providers/hours_dropdown_provider.dart';
import 'Providers/timing_provider.dart';

class AutoTimingView extends StatefulWidget {
  const AutoTimingView({Key? key}) : super(key: key);

  @override
  State<AutoTimingView> createState() => _AutoTimingViewState();
}

class _AutoTimingViewState extends State<AutoTimingView> {
  static List<String> days = [
    "Monday to Friday",
    "Monday to Saturday",
    "Full Week"
  ];

  static List<String> hours = [
    "Same for All Days",
    "Manually Set for Each Day"
  ];

  String? selectedDay;

  final openingController = TextEditingController();
  final closingController = TextEditingController();

  final openingFocusNode = FocusNode();
  final closingFocusNode = FocusNode();

  final daysFocusNode = FocusNode();
  final hoursFocusNode = FocusNode();

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
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Setup Opening Time',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Complete Your Profile to Continue',
                ),
              ),
              SizedBox(height: 40.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text18Regular(
                      text: 'Timing', textColor: AppColors.grayText2)),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.textFieldColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: AppColors.iconColor,
                        size: 20,
                      ),
                      SizedBox(width: 20.w),
                      Expanded(child: Consumer<DaysDropdownProvider>(
                        builder: (context, daysDropdownProvider, child) {
                          return DropdownButton<String>(
                            underline: Container(),
                            focusNode: daysFocusNode,
                            value: daysDropdownProvider.selectedDays,
                            menuMaxHeight: 300,
                            hint: const Text16Medium(text: 'Select Days'),
                            dropdownColor: AppColors.dialogBoxColor,
                            elevation: 5,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (newValue) {
                              daysDropdownProvider
                                  .setDaysSelectedValue(newValue!);

                              // setState(() {
                              //   selectedDay = value;
                              // });
                            },
                            items: days.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontFamily: AppFonts.nunitoRegular,
                                        fontSize: 16.sp,
                                        color: AppColors.primaryText),
                                  ));
                            }).toList(),
                          );
                        },
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.textFieldColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: AppColors.iconColor,
                        size: 20,
                      ),
                      SizedBox(width: 20.w),
                      Expanded(child: Consumer<HoursDropdownProvider>(
                        builder: (context, hoursDropdownProvider, child) {
                          return DropdownButton<String>(
                            underline: Container(),
                            focusNode: hoursFocusNode,
                            value: hoursDropdownProvider.selectedValue,
                            menuMaxHeight: 300,
                            hint: const Text16Medium(text: 'Select Hours'),
                            dropdownColor: AppColors.dialogBoxColor,
                            elevation: 5,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (newValue) {
                              hoursDropdownProvider
                                  .setHoursSelectedValue(newValue!);
                              if (newValue == "Manually Set for Each Day") {
                                Provider.of<TimingProvider>(context,
                                        listen: false)
                                    .openManualSelection(select: true);
                              } else {
                                Provider.of<TimingProvider>(context,
                                        listen: false)
                                    .openManualSelection(select: false);
                              }
                            },
                            items: hours.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontFamily: AppFonts.nunitoRegular,
                                        fontSize: 16.sp,
                                        color: AppColors.primaryText),
                                  ));
                            }).toList(),
                          );
                        },
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Consumer<TimingProvider>(
                  builder: (context, timingProvider, child) {
                return timingProvider.isManualSelection
                    ? const ManualTimeAdding()
                    : DoubleTextField(
                        controller1: openingController,
                        focusNode1: openingFocusNode,
                        onFieldSubmittedValue1: (newValue1) {},
                        hint1: 'Opening Time',
                        controller2: closingController,
                        focusNode2: closingFocusNode,
                        onFieldSubmittedValue2: (newValue2) {},
                        hint2: 'Closing Time',
                      );
              }),
              SizedBox(height: 65.h),
              CustomButton(
                title: TKeys.next.translate(context),
                //  'Next',
                onPress: () {
                  Get.to(() => const PricingView());
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
