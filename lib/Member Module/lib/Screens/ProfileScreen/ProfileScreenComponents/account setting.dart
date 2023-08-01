
import 'package:beared_friend/Member%20Module/lib/Screens/auth/LogInScreen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  void _showDialog(){
    showDialog(context: context,barrierDismissible: false,
      builder: (context) =>  AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text("Delete Account?",style: TextStyle(fontSize: 18.sp),),
        actions: [
          Row(
            children: [
              SizedBox(height:50.h, width: 151.w,
                  child: ElevatedButton(onPressed:(){
                    Navigator.of(context).pop();
                  }, child: Text("Cancel"),style:ElevatedButton.styleFrom(elevation: 100,
                    backgroundColor: Colors.transparent, shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)
                    ),),)),
              SizedBox(width: 10.w,),
              SizedBox(height:50.h, width: 151.w,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> MemberLoginScreen(),));
                  },
                    child: Text("Delete"),style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),),
                  )),
            ],
          ),
        ],
        content:
        Container( height: 160.h,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Are you Sure You want to Delete your Account? You can not Recover it Once it got deleted. To Confirm Please Type in Confirm.",
                style: TextStyle(color: Colors.grey, fontSize: 14),),
                SizedBox(height: 25.h,),
                SizedBox(height: 50.h,width: 328.w,
                    child: TextFormField(decoration: InputDecoration(fillColor: Colors.black38,filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.transparent)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.transparent)
                      ),),
                    ),
                ),
            ],
          ),
        ),
      ),);
  }
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
                InkWell(child: Container( height: 40.h,width: 20.w,decoration: BoxDecoration(color: Colors.transparent),
                child: Image.asset("assets/images/arrow head.png")),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> UserProfileScreen(),));
            },),
          ],
        ),
               SizedBox(height: 35.h,),
                 Text("Account Settings", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                 Text("Manage Your Account",style: TextStyle(color: Colors.white60),),
                 SizedBox(height: 40.h,),
                  Text("Change Language",style: TextStyle(color:Colors.white60,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20.h,),
                  Container(padding: EdgeInsets.all(25.sp),
                    width: 378.w,
                    height: 69.h,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20.r)
                    ),
                    child:Text("Change Language",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                  ),
                  SizedBox(height: 30.h,),
                  Text("Delete Account",style: TextStyle(color:Colors.white60,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20.h,),
                  InkWell(onTap: (){
                    // Navigator.of(context).pop();
                    _showDialog();
                  },
                    child: Container(padding: EdgeInsets.all(25.sp),
                      width: 378.w,
                      height: 69.h,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.r)
                      ),
                      child:Text("Delete Account",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                    ),
                  ),

                ]
        ),
      ),
    ),
      ),
    );
  }
}
