
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {

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
                  Text("FAQs", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Frequently Asked Question",style: TextStyle(color: Colors.white60),),
                  SizedBox(height: 40.h,),
                  CustomTextFormField(hintText: "Search", icon: Icons.search),
                  SizedBox(height: 30.h,),
                  Container(height: 154.h,width: 378.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                    child: Padding(
                      padding:  EdgeInsets.all(25.0.sp),
                      child: Column(
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h,),
                              Text("How It Works?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down,color: Colors.white60,)
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy tex")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Container(height: 69.h,width: 378.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                    child: Padding(
                      padding:  EdgeInsets.all(25.0.sp),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Text("What is Contest?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 14,color: Colors.white60,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Container(height: 69.h,width: 378.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.black38),
                    child: Padding(
                      padding:  EdgeInsets.all(25.0.sp),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Text("How to Participate?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,size: 14,color: Colors.white60,)
                        ],
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
