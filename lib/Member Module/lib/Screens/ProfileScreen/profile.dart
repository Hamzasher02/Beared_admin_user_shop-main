
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/appimages.dart';
import '../auth/LogInScreen/login.dart';
import '../ReservationScreen/resevation_screen.dart';
import 'ProfileScreenComponents/account setting.dart';
import 'ProfileScreenComponents/change_password.dart';
import 'ProfileScreenComponents/edit personal info.dart';
import 'ProfileScreenComponents/help&support.dart';
import 'ProfileScreenComponents/personal info.dart';
import 'ProfileScreenComponents/reuse_row_widgets.dart';
import 'ProfileScreenComponents/security.dart';
import 'ProfileScreenComponents/wishlist.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  List<Widget> arrLink = [
    const ProfileInfo(),
    const Wishlist(),
    const ReservationScreen(),
    const Security(),
    const AccountScreen(),
    const HelpSupport()
  ];
  List<String> arrTitle = [
    "Personal Info",
    "My Wishlist",
    "My Reservations",
    "Privacy & Security",
    "Account Settings",
    "Help & Support",
  ];
  List<String> arrIcon = [
    'assets/images/member/info.png',
    'assets/images/member/wishlist.png',
    'assets/images/member/reservation.png',
    'assets/images/member/privacy.png',
    'assets/images/member/setting.png',
    'assets/images/member/help.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  child: Image.asset(
                AppImages.bgProfileImg,
              )),
              Positioned(
                  top: 60.h,
                  left: 20.w,
                  child: InkWell(
                    child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Image.asset(
                          AppImages.arrowHeadImg,
                        )),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context)=> Beard_coins(),));
                    },
                  )),
              Positioned(
                top: 60.h,
                right: 20.w,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.purpleAccentColors,
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.edit, size: 17.sp),
                      color: Colors.white,
                      onPressed: () {
                        Get.to(const EditProfileInfo());
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160.h,
                left: 130.w,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profileImg),
                      radius: 60.r,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Nouman Imran",
                      style: GoogleFonts.nunito(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "@noumanimran",
                      style: GoogleFonts.nunito(
                          color: AppColors.whiteGrayColors, fontSize: 16.sp),
                    ),
                  ],
                ),
              )
            ]),
            Container(
              padding: EdgeInsets.all(17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 18.sp,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 33.h,
                        width: 110.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(const ChangePassword());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.purpleAccentColors,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Edit Visibility",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ReUseRowWidgets(
                      title: "Name", name: "Nouman Imran", icon: Icons.public),
                  SizedBox(
                    height: 15.h,
                  ),
                  const ReUseRowWidgets(
                      title: "Email",
                      name: "noumanimran@gmail.de",
                      icon: Icons.lock_outline),
                  SizedBox(
                    height: 15.h,
                  ),
                  const ReUseRowWidgets(
                      title: "Phone",
                      name: "+49 221 934590",
                      icon: Icons.lock_outline),
                  SizedBox(
                    height: 15.h,
                  ),
                  const ReUseRowWidgets(
                      title: "Address",
                      name: "Kollnburg - Germany",
                      icon: Icons.public),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Settings",
                    style: GoogleFonts.nunito(
                      color: AppColors.white60Colors,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => arrLink[index],
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10.w, right: 10.w),
                            margin: EdgeInsets.only(bottom: 15.h),
                            width: 365.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Image.asset(arrIcon[index]),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  arrTitle[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 12.sp,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  InkWell(
                    onTap: () {
                      Get.to(MemberLoginScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      margin: EdgeInsets.only(bottom: 15.h),
                      width: 378.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(AppImages.logOutImg),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
