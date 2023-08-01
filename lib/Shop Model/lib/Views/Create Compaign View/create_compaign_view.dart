
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../Admin Module/lib/widgets/textfield.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_text_button.dart';
import '../../Components/double_text_field.dart';
import 'Providers/create_compaign_dropdown_provider.dart';

class CreateCompaignView extends StatefulWidget {
  const CreateCompaignView({Key? key}) : super(key: key);

  @override
  State<CreateCompaignView> createState() => _CreateCompaignViewState();
}

class _CreateCompaignViewState extends State<CreateCompaignView> {
  static List<String> dropdownMenuList = [
    "Option 1",
    "Option 2",
    "Option 3",
    "Option 4",
    "Option 5",
  ];

  final compaignNameController = TextEditingController();
  final coinsController = TextEditingController();
  final discountController = TextEditingController();

  final startController = TextEditingController();
  final endController = TextEditingController();

  final compaignNameFocusNode = FocusNode();
  final coinsFocusNode = FocusNode();
  final discountFocusNode = FocusNode();

  final starFocusNode = FocusNode();
  final endFocusNode = FocusNode();

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
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Start New Campaign',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'New Attractive Campaign for Customers',
                ),
              ),
              SizedBox(height: 40.h),
              Text18Regular(
                  text: 'Campaign Name', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              CustomTextField(
                controller: compaignNameController,
                focusNode: compaignNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Campaign Name',
              ),
              SizedBox(height: 20.h),
              Text18Regular(
                  text: 'Beard Coins', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              CustomTextField(
                controller: coinsController,
                focusNode: coinsFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Coins Client have to Collect',
              ),
              SizedBox(height: 20.h),
              Text18Regular(
                  text: 'Discount on Last Beard Coins',
                  textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextField(
                      controller: discountController,
                      focusNode: discountFocusNode,
                      onFieldSubmittedValue: (newValue) {},
                      keyBoardType: TextInputType.text,
                      obscureText: false,
                      hint: '20',
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 60.h,
                      width: 104.w,
                      decoration: BoxDecoration(
                          color: AppColors.textFieldColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Consumer<CreateCompaignDropdownProvider>(
                              builder: (context, createCompaignDropdownProvider,
                                  child) {
                                return DropdownButton(
                                  borderRadius: BorderRadius.circular(20),
                                  underline: Container(),
                                  value:
                                      createCompaignDropdownProvider.isSelected,
                                  menuMaxHeight: 300,
                                  hint: const Text16Medium(text: 'Type'),
                                  dropdownColor: AppColors.dialogBoxColor,
                                  elevation: 5,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 25,
                                  isExpanded: true,
                                  onChanged: (newValue) {
                                    createCompaignDropdownProvider
                                        .setTypeSelectedValue(newValue!);
                                  },
                                  items: dropdownMenuList.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              fontFamily:
                                                  AppFonts.nunitoRegular,
                                              fontSize: 16.sp,
                                              color: AppColors.primaryText),
                                        ));
                                  }).toList(),
                                );
                              },
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text18Regular(text: 'Duration', textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              DoubleTextField(
                  controller1: startController,
                  focusNode1: starFocusNode,
                  onFieldSubmittedValue1: (newValue1) {},
                  hint1: 'Starts On',
                  
                  suffixIcon1: const Icon(Icons.date_range),
                  controller2: endController,
                  focusNode2: endFocusNode,
                  onFieldSubmittedValue2: (newValue2) {},
                  hint2: 'End On',
                  suffixIcon2: const Icon(Icons.date_range)),
              SizedBox(height: 65.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(
                    onTap: () {},
                    height: 60.h,
                    width: 175.w,
                    title: 'Save',
                    color: Colors.transparent,
                  ),
                  CustomTextButton(
                      onTap: () {},
                      height: 60.h,
                      width: 175.w,
                      title: 'Publish',
                      color: AppColors.buttonColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
