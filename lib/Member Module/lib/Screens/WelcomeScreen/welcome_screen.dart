import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../Utils/app_colors.dart';
import '../auth/LogInScreen/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
 bool changed = false;
 bool changed1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBgColors,
        body: SingleChildScrollView(
          child: Column(
              children: [
              SizedBox(height: 150.h),
              Center(
                child: Text("Tell Us About Yourself",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              Center(
                child: Text("Choose to Continue",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.whiteGrayColors,
                  ),
                ),
              ),
              SizedBox(height: 131.h,),
                InkWell(
                  onTap: (){
                    setState(() {
                      changed = true;
                      changed1 = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100.h, width: 348.w,
                    decoration: BoxDecoration(
                        color: changed
                            ? AppColors.purpleAccentColors
                            : Colors.black38,
                            borderRadius: BorderRadius.circular(20),
                  ),
                    child: Row(
                      children: [
                      SizedBox(width: 38.w,),
                        const Icon(Icons.person,
                            color: AppColors.iconWhiteColors,
                        ),
                        SizedBox(width: 30.w,),
                        Text("Beard Friend",
                          style: TextStyle(fontSize: 16.sp,
                              color: AppColors.iconWhiteColors,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 45.h,),
                InkWell( onTap: (){
                  setState(() {
                    changed1 = true;
                    changed = false;
                  });
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100.h,
                    width: 348.w,
                    decoration: BoxDecoration(
                      color: changed1
                          ? AppColors.purpleAccentColors
                          : Colors.black38,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 38.w,),
                        const Icon(Icons.storefront,
                            color:AppColors.iconWhiteColors),
                        SizedBox(width: 30.h,),
                        Text("BarbarShopScreen",
                          style: TextStyle(fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 200.h,),
              Padding(
                padding:  EdgeInsets.only(left: 205.w,),
                child: SizedBox( height: 60.h,width: 143.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purpleAccentColors,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))
                    ),
                    onPressed: () async {
                    if( changed == true ){
                    await Get.to(MemberLoginScreen());
                      setState(() {
                        changed = false;
                      });
                    }
                    if( changed1 == true ){
                      await Get.to(MemberLoginScreen());
                       setState(() {
                         changed1 = false;
                       });
                    } else {
                      Fluttertoast.showToast(
                        msg: "Select any option first",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black26,
                        textColor: Colors.white,
                        fontSize: 18.0,
                    );}
                  },
                    child: Row(
                        children: [
                        Text("Next",
                          style: TextStyle(fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                          color: AppColors.textWhiteColors
                        ),),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,
                            size: 16.sp,
                            color: AppColors.iconWhiteColors,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             SizedBox(height: 90.h,)
            ],
          ),
        ),
        );
  }
}
