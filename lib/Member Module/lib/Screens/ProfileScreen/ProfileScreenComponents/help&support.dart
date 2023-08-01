import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile.dart';
import 'faq.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {

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
    Text("Help & Support", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
    Text("We are Available 24/7 ",style: TextStyle(color: Colors.white60),),
    SizedBox(height: 40.h,),
      Container(height: 69.h,width: 378.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
        child: Padding(
          padding:  EdgeInsets.all(25.0.sp),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text("Email Us",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
              Spacer(),
              Icon(Icons.arrow_forward_ios,size: 14,color: Colors.white60,)
            ],
          ),
        ),
      ),
      SizedBox(height: 25.h,),
      InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Faq(),));
      },
        child: Container(height: 69.h,width: 378.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
          child: Padding(
            padding:  EdgeInsets.all(25.0.sp),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h,),
                Text("FAQs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                Spacer(),
                Icon(Icons.arrow_forward_ios,size: 14,color: Colors.white60,)
              ],
            ),
          ),
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
