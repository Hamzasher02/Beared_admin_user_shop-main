
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../beard contest screens/contest_image.dart';
import '../beard contest screens/view_all_contest.dart';

class NewPhoto extends StatefulWidget {
  const NewPhoto({Key? key}) : super(key: key);

  @override
  State<NewPhoto> createState() => _NewPhotoState();
}

class _NewPhotoState extends State<NewPhoto> {

  Widget _progressIndicator(){
    return SizedBox( height: 60.h,width: 57.5.w,
      child: const CircularProgressIndicator(
        color: AppColors.purpleAccentColors,
      ),
    );
  }
  void _showDialog(){
    showDialog(context: context,
      builder: (context) =>  AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Text("Add New Photo",style: TextStyle(fontSize: 18.sp),),
        actions: [
          Row(
            children: [
              SizedBox(height:50.h, width: 151.w,
                  child: ElevatedButton(onPressed:(){
                    Navigator.of(context).pop();
                  }, child: Text("Cancel"),style:ElevatedButton.styleFrom(elevation: 100,
                    backgroundColor: Colors.transparent, shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.r)
                    ),),)),
              SizedBox(width: 10.w,),
              SizedBox(height:50.h, width: 151.w,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pop();
                    _ShowDialog();
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
        Container( height: 240.h,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Text("Important Note:", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
              SizedBox(height: 15.h,),
              Text("You can not Change your Current Photo:\n \u2022 You Must Have to delete Your current photo."
             "\n \u2022Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet."
                "\n \u2022Cras dapibus. Vivamus elementum semper nisi.",
                style: GoogleFonts.nunito(color: Colors.grey, fontSize: 14),),

            ],
          ),
        ),
      ),);
  }
  void _ShowDialog(){
    showDialog(context: context,
      builder: (context) =>  AlertDialog(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text("Delete Photo?",style: TextStyle(fontSize: 18),),
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
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Delete"),style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),),
                  )),
            ],
          ),
        ],
        content:
        Container( height: 240.h,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Text("You Have Got 1127 Votes on your current Photo. Do you Really want to delete current Photo.", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
              SizedBox(height: 15.h,),
              Text("After Deleting:\n \u2022 You will lose all your votes."
             "\n \u2022 You Can not Recover your current photo once it gets Deleted."
                "\n \u2022 Cras dapibus. Vivamus elementum semper nisi.",
                style: GoogleFonts.nunito(color: Colors.grey, fontSize: 14),),

            ],
          ),
        ),
      ),);
  }

  @override
  List<String> arrimg = ['assets/images/grid 1.png', 'assets/images/grid 2.png', 'assets/images/grid 3.png', 'assets/images/grid 4.png'];
  List<String> arrtxt = ['1455 Votes', '1255 Votes', '1155 Votes', '1004 Votes'];
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
                    style: GoogleFonts.nunito(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),

                  SizedBox(height: 30.h),

            Container( padding: EdgeInsets.all(10.0),
                height: 162.h, width: 378.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black38,
                ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/beard.png"),
                      SizedBox(width: 20.w,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 28.h,),
                          Text("Your Photo Have Got", style: TextStyle(fontSize: 16,color: Colors.grey) ,),
                          Text("927 Votes", style: TextStyle(fontSize: 20) ,),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 25.w,),
                  Padding(
                    padding: EdgeInsets.only(bottom: 60.0),
                    child: Icon(Icons.more_vert_sharp,size: 20),
                  )
                ],
              ) ,
            ),

                  SizedBox(height: 30.h),
                  CustomElevatedButton(onPressed: () => _showDialog(), label:"Add a New Photo"),
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
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 1.5/ 2,
                        crossAxisSpacing: 22,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 155,


                      ), itemBuilder: (context,index){
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
                                          Image.asset("assets/images/navicon.png",color: Colors.black,),
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
