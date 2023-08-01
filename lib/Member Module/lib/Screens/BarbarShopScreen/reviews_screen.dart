
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Utils/appimages.dart';
import '../ProfileScreen/profile.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            height: 40.h,width: 20.w,
                            decoration: const BoxDecoration(color: Colors.transparent),
                          child: Image.asset(AppImages.arrowHeadImg)),
                        onTap: (){
                          Get.to( UserProfileScreen());
                        },),
                    ],
                  ),
                  SizedBox(height: 35.h,),
                  Text("Reviews",
                    style: TextStyle(fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textWhiteColors
                    ),),
                  Text("Customers Feedback",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                        color: AppColors.black38Colors,
                    fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  ListView.builder(
                    shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),itemCount: 2,
                    itemBuilder: (context, int index) =>
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            child: Container( padding: const EdgeInsets.all(12),
                              alignment: Alignment.center,
                              height: 150.h,
                              child: ListTile(
                                title: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:AssetImage(AppImages.reviewManImg),),
                                    SizedBox(width: 20.w,),
                                    Text("Aida Bugg",style: TextStyle(fontSize: 16.sp),),
                                    const Spacer(),
                                    Container(
                                      height: 25.h, width: 64.h,
                                      decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5.w,),
                                          Icon(Icons.star, color:Colors.black,size:15.sp ),
                                          Text('4.5' ,
                                            style: TextStyle(color: Colors.black,
                                              fontWeight: FontWeight.bold, fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3 days ago",
                                      style: TextStyle(color: AppColors.white38Colors,
                                        fontWeight: FontWeight.w500, fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(height: 15.h,),
                                    Text("Dummy text is also used to demonstrate the appearance\nof used to dummy text.",
                                      style: TextStyle(
                                        color: AppColors.white60Colors,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
