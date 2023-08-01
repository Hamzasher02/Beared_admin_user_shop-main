
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../beard contest screens/contest_image.dart';
import '../beard contest screens/view_all_contest.dart';
import '../beard contest screens/how_to_participate.dart';

class Contest extends StatefulWidget {
  const Contest({Key? key}) : super(key: key);

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> {

  Widget _progressIndicator(){
    return SizedBox( height: 60.h,width: 57.5.w,
      child: const CircularProgressIndicator(
        color: AppColors.purpleAccentColors,
      ),
    );
  }
  @override
  List<String> arrimg = [
    'assets/images/member/grid 1.png',
    'assets/images/member/grid 2.png',
    'assets/images/member/grid 3.png',
    'assets/images/member/grid 4.png',
  ];
  List<String> arrtxt = [
    '1455 Votes', '1255 Votes',
    '1155 Votes', '1004 Votes',
  ];
  List<String> arrtxt1 = ['1', '2', '3', '4'];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h,),
                  Text("Beard Contest", style: GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Participate in the Contest",
                    style: GoogleFonts.nunito(
                        color: AppColors.whiteGrayColors,
                        fontSize: 16),),

                  SizedBox(height: 30.h),

                  Container(
                    height: 162.h, width: 378.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.black38,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.h,),
                          Text("Contest Ends in", style: TextStyle(fontSize: 16) ,),
                          SizedBox(height: 25.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Padding(padding: EdgeInsets.only(left: 55)),
                              _progressIndicator(),
                              SizedBox(width: 40.w,),
                              _progressIndicator(),
                              SizedBox(width: 40.w,),
                              _progressIndicator(),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 30.h,),
                  CustomElevatedButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Participate(),));
                  } , label:"Participate in the Contest"),
                  SizedBox(height: 30.h),

                  Row(
                    children: [
                   Text("Leader Board", style: GoogleFonts.nunito(color: Colors.white, fontSize: 18),),
                      Spacer(),

                      SizedBox( height: 33.h , width: 93.w,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllContest(),));
                        }, child: Text("View All", style: TextStyle(fontSize: 12),),
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ],
                  ),
                 SizedBox(height: 25.h,),
                  GridView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                      itemCount:4,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 1.5/ 2,
                        crossAxisSpacing: 22,
                        mainAxisSpacing: 20,
                          mainAxisExtent: 155,
                      ),
                      itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> ContestImage(),));
                      }
                      ,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Column(
                          children: [
                            Image.asset(arrimg[index],fit: BoxFit.fill,),
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(7) ),
                                Container(height: 26.h,width: 49.w,
                                decoration: BoxDecoration( color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(2) ),
                                      Image.asset("assets/images/member/navicon.png",color: Colors.black,),
                                      SizedBox(width: 6.w,),
                                      Text(arrtxt1[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10.w,),
                                Text(arrtxt[index], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),

                              ],
                            ),
                          ],
                        ),

                      ),
                    );
                  })
                ]
            ),
          ),
        ),
      ),
    );
  }
}
