import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../App Constants/App Images/app_images.dart';
import '../Selection View/selection_view.dart';

class ShopSplashView extends StatefulWidget {
  const ShopSplashView({Key? key}) : super(key: key);

  @override
  State<ShopSplashView> createState() => _ShopSplashViewState();
}

class _ShopSplashViewState extends State<ShopSplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Get.off(() => const SelectionView());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 926.h,
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
              child: Image.asset(AppImages.mainLogo)
            ),
          ],

        ),
      ),
    );
  }
}
