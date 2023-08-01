
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contest_image.dart';

// ignore: must_be_immutable
class ViewAllContest extends StatelessWidget {

  @override
  List<String> arrimg = [
    'assets/images/grid 1.png',
    'assets/images/grid 2.png',
    'assets/images/grid 3.png',
    'assets/images/grid 4.png',
  ];
  List<String> arrtxt = [
    '1455 Votes', '1255 Votes',
    '1155 Votes', '1004 Votes',
  ];
  List<String> arrtxt1 = [
    '1', '2',
    '3', '4',
  ];

  ViewAllContest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h,),
                  Text("Beard Contest", style: GoogleFonts.nunito(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold),),
                  Text("Most Liked Beard from this Contest",
                    style: GoogleFonts.nunito(
                        color: AppColors.whiteGrayColors,
                        fontSize: 16.sp
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:14,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 1.5/ 2,
                        crossAxisSpacing: 22,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 155,
                      ),
                      itemBuilder: (context,index){
                    String imagePath = arrimg[index % arrimg.length];
                    String txt1Path = arrtxt[index % arrtxt.length];
                    String txt2Path = arrtxt1[index % arrtxt1.length];
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> ContestImage(),));
                          },
                          child: Stack(
                            children: [
                              Container(
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(15.r)
                              ),
                              child: Column(
                                children: [
                                  Image.asset(imagePath,fit: BoxFit.fill,),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      const Padding(padding: EdgeInsets.all(7) ),
                                      Image.asset("assets/images/small logo.png",height: 24.h,width: 28.w),
                                      SizedBox(width: 10.w,),
                                      Text(txt1Path, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                              Positioned(top: 98.h,right: 5.w,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black87,radius: 14.r,
                                  child: Icon(Icons.thumb_up_alt_outlined,size: 17.sp,),
                                ),
                              ),
                            ]
                          ),
                        );
                      }),
                ]
            ),
          ),
        ),
      ),
    );
  }
}