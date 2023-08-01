import 'package:beared_friend/Admin%20Module/lib/screens/SplashScreen/splashScreen.dart';
import 'package:beared_friend/Member%20Module/lib/Screens/SplashScreens/splash_screen.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Splash%20View/splash_view.dart';
import 'package:beared_friend/localization_service.dart';
import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:beared_friend/Member%20Module/lib/Utils/appimages.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () async {
  //     final prefs = await SharedPreferences.getInstance();
  //     String? userToken = prefs.getString('access_token');
  //     if(userToken != null){
  //       Get.to(LoginAdminView());
  //     }else{
  //       Get.offAll(BottomNavigation());
  //     }
  //   });
  // }
  final localizationController = Get.put(LocalizationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              localizationController.toggleLanguage();
            },
            child: Text(TKeys.admin_module.translate(context))),
        const Spacer(),
        Image.asset(AppImages.splashLogo),
        const Spacer(),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: CustomElevatedButton(
            onPressed: () {
              Get.to(const AdminSplashView());
            },
            // label: 'Admin Module',
            label: TKeys.admin_module.translate(context),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: CustomElevatedButton(
              onPressed: () {
                Get.to(const ShopSplashView());
              },
              label: TKeys.shop_module.translate(context)),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: CustomElevatedButton(
              onPressed: () {
                Get.to(const MemberSplashScreen());
              },
              label: TKeys.member_module.translate(context)),
        ),
        const Spacer(),
      ],
    ));
  }
}
