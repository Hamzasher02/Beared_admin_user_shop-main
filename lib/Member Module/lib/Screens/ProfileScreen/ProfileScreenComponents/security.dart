import 'package:beared_friend/Member%20Module/lib/Screens/ProfileScreen/profile.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/toggle_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'change_password.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  Widget myRow({required String title, required name }){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
        Text(name,style: const TextStyle(color: Colors.white60),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(child: Container( height: 40.h,width: 20.w,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const UserProfileScreen(),));
                  },),
                SizedBox(height: 35.h,),
                Text("Privacy & Security", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),),
                const Text("Protect Your Account",style: TextStyle(color: Colors.white60),),
                SizedBox(height: 30.h,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChangePassword(),));
                },
                  child: Container(height: 69.h,width: 378.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                    child: Padding(
                      padding:  EdgeInsets.all(25.0.sp),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Text("Change Password",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                          const Spacer(),
                         Icon(Icons.arrow_forward_ios,size: 14.sp,color: Colors.white60,)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 69.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(25.0.sp),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h,),
                        Text("Data Privacy",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                        const Spacer(),
                        Icon(Icons.public,size: 18.sp,color: Colors.white60,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Text("Visibility",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                SizedBox(height: 20.h,),
                Container(height: 100.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("Profile Picture",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                            Row(
                              children: [
                                Icon(Icons.public,color: Colors.white60,size: 20.sp,), SizedBox(width: 10.w,),
                                Text("Public",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                              ],
                            ),

                          ],
                        ),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 100.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("Name",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                            Row(
                              children: [
                                Icon(Icons.public,color: Colors.white60,size: 20.sp,), SizedBox(width: 10.w,),
                                Text("Public",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                              ],
                            ),

                          ],
                        ),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 100.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("Email Address",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                            Row(
                              children: [
                                Icon(Icons.public,color: Colors.white60,size: 20.sp,), SizedBox(width: 10.w,),
                                Text("Public",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 100.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("Phone Number",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                            Row(
                              children: [
                                Icon(Icons.public,color: Colors.white60,size: 20.sp,), SizedBox(width: 10.w,),
                                Text("Public",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Text("Notification",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                SizedBox(height: 20.h,),
                Container(height: 72.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h,),
                        Text("Show Notifications",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 72.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h,),
                        Text("News & Updates",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(height: 100.h,width: 378.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                  child: Padding(
                    padding:  EdgeInsets.all(20.0.sp),
                    child: Row(
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h,),
                            Text("Birthday Gifts",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                            Row(
                              children: [
                                Text("via Email",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                              ],
                            ),

                          ],
                        ),
                        const Spacer(),
                        ToggleButtonWidget(),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
