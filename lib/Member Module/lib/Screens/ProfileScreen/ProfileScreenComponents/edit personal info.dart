
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_text_form_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/appimages.dart';
import '../../../Widgets/custom_elevated_button_widget.dart';
import '../profile.dart';

class EditProfileInfo extends StatefulWidget {
  const EditProfileInfo({Key? key}) : super(key: key);

  @override
  State<EditProfileInfo> createState() => _EditProfileInfoState();
}

class _EditProfileInfoState extends State<EditProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(child: Container( height: 40.h,width: 20.w,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Image.asset(AppImages.arrowHeadImg)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const UserProfileScreen(),));
                  },),
                SizedBox(height: 35.h,),
                Text("Personal Info",
                  style: TextStyle(fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Edit Your Profile",
                  style: TextStyle(color: Colors.white60,
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(width: 378.w,height: 249.h,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20.r),
                      color: Colors.black38),
                  child: Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Profile Picture",
                          style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20.h,),
                        Center(
                          child: Stack(
                            children: [
                              Image.asset("assets/images/ProfileScreenComponents.png",
                                width: 100.w,height: 100.h,),
                              Positioned(top: 70.h,left: 70.w,
                                  child: Container(
                                    height:26.h ,width: 26.w,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r),color: Colors.white),
                                    child: Icon(Icons.camera_alt,color: Colors.black,size: 15.sp,),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        const Center(child: Text("Tap to Change your Profile\nPicture.",
                          style: TextStyle(color: Colors.white30,
                           ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Text("Personal Info",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white60),),
                SizedBox(height: 20.h,),
                const CustomTextFormField(icon:CupertinoIcons.person, hintText:"Faran Imran",),
                SizedBox(height: 20.h,),
                const CustomTextFormField(labelText: "Email Address", hintText:"Email Address" , icon:Icons.email_outlined),
                SizedBox(height: 20.h,),
                const CustomTextFormField(labelText: "Phone Number", hintText:"Phone Number" , icon: CupertinoIcons.phone),
                SizedBox(height: 20.h,),
                const CustomTextFormField(labelText: "Date Of Birth", hintText:"Date Of Birth" , icon: CupertinoIcons.phone,icon1: Icons.calendar_month_sharp),
                SizedBox(height: 20.h,),
                const CustomTextFormField(labelText: "Address", hintText:"Address" , icon:CupertinoIcons.location_solid),
                SizedBox(height: 80.h,),
                CustomElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> const UserProfileScreen(),));
                }, label:"Update")



              ],
            ),
          ),
        ),
      ),
    );
  }
}
