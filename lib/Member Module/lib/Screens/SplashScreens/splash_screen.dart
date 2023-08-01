import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Utils/appimages.dart';
import '../WelcomeScreen/welcome_screen.dart';

class MemberSplashScreen extends StatefulWidget {
  const MemberSplashScreen({Key? key}) : super(key: key);
  @override
  State<MemberSplashScreen> createState() => _MemberSplashScreenState();
}
class _MemberSplashScreenState extends State<MemberSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:3),(){
      Get.to(const WelcomeScreen());
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashLogo),
            SizedBox(height: 30.h,),
            Image.asset(AppImages.splashTextImg),
          ],
        ),
      ),
    );
  }
}