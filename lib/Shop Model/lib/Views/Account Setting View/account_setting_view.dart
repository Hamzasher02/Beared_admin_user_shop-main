import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../../App Constants/App Text/text.dart';
import 'Providers/language_dropdown_provider.dart';

class AccountSettingView extends StatefulWidget {
  const AccountSettingView({Key? key}) : super(key: key);

  @override
  State<AccountSettingView> createState() => _AccountSettingViewState();
}

class _AccountSettingViewState extends State<AccountSettingView> {
  static List<String> languages = [
    "English",
    "French",
    "Chines",
    "Urdu",
    "Hindi",
    "Pashtoo",
  ];

  final searchController = TextEditingController();

  final searchFocusNode = FocusNode();

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
                    text: TKeys.Account_Settings.translate(context),
                    // 'Account Settings',
                  )),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: TKeys.Manage_Your_Account.translate(context),
                  // 'Manage_Your_Account',
                ),
              ),
              SizedBox(height: 40.h),
              Text18Regular(
                  text: TKeys.Change_Language.translate(
                    context,
                  ),

                  //  'Change Language',
                  textColor: AppColors.grayText2),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.textFieldColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Center(
                    child: Expanded(child: Consumer<LanguageDropdownProvider>(
                      builder: (context, languageDropdownProvider, child) {
                        return DropdownButton(
                          underline: Container(),
                          value: languageDropdownProvider.selectedLanguage,
                          menuMaxHeight: 300,
                          hint: const Text16Medium(text: 'Select Language'),
                          dropdownColor: AppColors.dialogBoxColor,
                          elevation: 5,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 25,
                          isExpanded: true,
                          onChanged: (newValue) {
                            languageDropdownProvider
                                .setSelectedLanguage(newValue!);
                          },
                          items: languages.map((value) {
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
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text18Regular(
                  text: TKeys.Delete_Account.translate(context),
                  // 'Delete Account'
                  textColor: AppColors.grayText2),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.deleteButton,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: ListTile(
                        onTap: () {
                          _showAlertDialog(context);
                        },
                        title: Text16White(
                          text: TKeys.Delete_Account.translate(context),

                          // 'Delete Account',
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.grayText,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    final deleteController = TextEditingController();
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
              height: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text24(
                    text: TKeys.Delete_Account.translate(context),
                    // 'Delete Account?'
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text16Regular(
                    text: TKeys.Delete_Account_Confirmation.translate(context),
                    // 'Are you Sure You want to Delete your Account? You can not Recover it Once it got deleted. To Confirm Please Type in Confirm.'),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.blackText,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: TextFormField(
                        controller: deleteController,
                        onFieldSubmitted: (newValue) {},
                        keyboardType: TextInputType.text,
                        cursorColor: AppColors.primaryText,
                        style: TextStyle(color: AppColors.primaryText),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          border: InputBorder.none,
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
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
                            text: TKeys.Cancel.translate(
                              context,
                            )

                            // 'Cancel'
                            ,
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
                          width: 155.w,
                          decoration: BoxDecoration(
                              color: AppColors.deleteButton,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text14(
                            text: TKeys.Delete.translate(context)
                            // 'Delete',
                            ,
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
