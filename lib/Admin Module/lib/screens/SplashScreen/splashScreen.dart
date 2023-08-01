import 'dart:async';



import 'package:beared_friend/Admin%20Module/lib/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/bottomNavigation.dart';
import '../Auth/LogInScreen/login.dart';


class AdminSplashView extends StatefulWidget {
  const AdminSplashView({Key? key}) : super(key: key);

  @override
  State<AdminSplashView> createState() => _AdminSplashViewState();
}

class _AdminSplashViewState extends State<AdminSplashView> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Get.off(()=> const LoginAdminView());
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();
      String? userToken = prefs.getString('access_token');
      if(userToken != null){
        Get.to(LoginAdminView());
      }else{
        Get.offAll(BottomNavigation());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        height: 926,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xff1C1C1E), Color(0xff383838), ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(logo,height: 159.h,width: 184.w,)
            ),
          ],

        ),
      ),
    );
  }
}