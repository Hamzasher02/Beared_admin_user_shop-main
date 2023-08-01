
import 'package:beared_friend/Member%20Module/lib/Screens/ProfileScreen/ProfileScreenComponents/reuse_row_widgets.dart';
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/appimages.dart';
import '../profile.dart';
import 'edit personal info.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);
  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}
class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(child: Container( height: 40.h,width: 20.w,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: Image.asset(AppImages.arrowHeadImg)),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const UserProfileScreen(),));
                      },),
                    const Spacer(),
                    Positioned(top:60.h, right: 20.w,
                      child: Container( height: 40.h, width: 40.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                           color: AppColors.purpleAccentColors,
                        ),
                        child: Center(
                          child: IconButton(icon: Icon(Icons.edit, size: 17.sp), color:Colors.white,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> const EditProfileInfo(),));
                            },),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.h,),
                Text("Personal Info",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                ),
                ),
                Text("Manage your Personal Info",
                  style: TextStyle(color: AppColors.white60Colors,
                  fontWeight: FontWeight.w500,
                    fontSize: 16.sp
                  ),),
                SizedBox(height: 30.h,),
                Container(width: 378.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20.r),
                      color: Colors.black38),
                  child: Padding(
                    padding: EdgeInsets.all(20.0.sp),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         SizedBox(height: 70.h,width: 70.w,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/p-info.png"),radius: 30.r,)),
                        SizedBox(width: 20.w,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [SizedBox(height: 10.h,),
                            Text("Faran Imran",
                              style: TextStyle(fontSize: 18.sp,
                                fontWeight: FontWeight.w600,color: Colors.white,
                            ),
                            ),
                            Text("@faranimran",
                              style: TextStyle(fontSize: 14.sp,
                                fontWeight: FontWeight.w600,color: Colors.white60,
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 34.h,),
                Row(
                  children: [
                    Text("Profile", style: TextStyle(
                        color: AppColors.white60Colors,
                        fontSize: 18.sp,
                    ),
                    ),
                    const Spacer(),
                    SizedBox( height: 33.h , width: 110.w,
                      child: ElevatedButton(onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Change_Password(),));
                      },
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.purpleAccentColors,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: Text("Edit Visibility",
                          style: TextStyle(fontSize: 12.sp),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                const ReUseRowWidgets(title: "Name", name: "Nouman Imran",icon:Icons.public ),
                SizedBox(height: 15.h,),
                const ReUseRowWidgets(title: "Email", name:"noumanimran@gmail.de",icon:Icons.lock_outline),
                SizedBox(height: 15.h,),
                const ReUseRowWidgets(title: "Phone", name:"+49 221 934590",icon:Icons.lock_outline),
                SizedBox(height: 15.h,),
                const ReUseRowWidgets(title: "Address", name: "Kollnburg - Germany",icon:Icons.public  ),
                SizedBox(height: 30.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}