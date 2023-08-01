import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container.dart';
import '../../Components/custom_container2.dart';
import '../../Components/icon_button.dart';
import '../../Components/my_tile.dart';
import '../../Components/reusable_row.dart';
import '../Account Setting View/account_setting_view.dart';
import '../Change Password/change_password.dart';
import '../Edit Profile View/edit_profile_view.dart';
import '../Help & Support View/help_and_support_view.dart';
import '../Reservations View/reservations_view.dart';
import '../Scan ID View/scan_id_view.dart';
import '../Security View/security_view.dart';
import '../Staff VIew/staff_view.dart';
import '../Wishlist View/wishlist_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<IconData> iconsArray = [
    Icons.favorite,
    Icons.verified_user,
    Icons.settings,
    Icons.headset_mic_outlined,
  ];
  List<String> titleArray = [
    'My Wishlist',
    'Privacy & Security',
    'Account Settings',
    'Help & Support',
  ];
  List<Widget> onTapArray = [
    const WishlistView(),
    const SecurityView(),
    const AccountSettingView(),
    const HelpAndSupportView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(
                  height: 420.h,
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.dummy,
                    fit: BoxFit.cover,
                  )),
              Container(
                height: 420.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, AppColors.scaffoldColor],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: MyIconButton(
                            height: 40.h,
                            width: 40.w,
                            onTap: () {
                              Get.to(() => const EditProfileView());
                            },
                            iconColor: AppColors.whiteColor,
                            buttonColor: AppColors.buttonColor,
                            icon: Icons.edit,
                          )),
                      Column(
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.grayText, width: 3),
                                image: const DecorationImage(
                                    image: AssetImage(AppImages.dummy),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          const Text24(
                            text: 'Creative Cuts',
                          ),
                          const Text16Medium(text: '@creativecuts'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text18Regular(text: 'Profile', textColor: AppColors.grayText2),
                SizedBox(
                  height: 20.h,
                ),
                ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: TKeys.Address.translate(context),
                  // 'Address',
                  title: 'Koln - Germany',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Web',
                  title: 'www.creativecut-cologne.de',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Tel',
                  title: '+49 221 934590',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ReusableRow(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  label: 'Mail',
                  title: 'contact@creativecut.cologne.de',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text18Regular(
                    text: TKeys.Settings.translate(context),
                    //  'Settings',
                    textColor: AppColors.grayText2),
                SizedBox(
                  height: 390.h,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: CustomContainer2(
                          h: 80.h,
                          w: double.infinity,
                          child: Center(
                            child: ListTile(
                              onTap: () {
                                Get.to(onTapArray[index]);
                              },
                              title: Text16White(text: titleArray[index]),
                              leading: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryText,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  iconsArray[index],
                                  color: AppColors.blackText,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.grayText,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 80.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.deleteButton,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: ListTile(
                          title: const Text16White(
                            text: 'Logout',
                          ),
                          leading: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: AppColors.primaryText,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.logout_outlined,
                              color: AppColors.blackText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
