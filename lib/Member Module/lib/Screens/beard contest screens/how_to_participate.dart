
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/app_colors.dart';
import 'new_photo.dart';

class Participate extends StatefulWidget {
  const Participate({Key? key}) : super(key: key);

  @override
  State<Participate> createState() => _ParticipateState();
}

class _ParticipateState extends State<Participate> {
  bool _box1value = false;
  bool _box2value = false;
  bool  box1 = false;
  bool  box2 = false;

  Widget _progressIndicator(){
    return SizedBox( height: 60.h,width: 57.5.w,
      child: const CircularProgressIndicator(
        color: AppColors.purpleAccentColors,
      ),
    );
  }
  void _ShowDialog(){
    showDialog(context: context,barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        insetPadding: EdgeInsets.all(25.sp),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title:  Text("Participate",style: TextStyle(fontSize: 18.sp),),
        actions: [
          Padding(
              padding: EdgeInsets.all(10.sp),
            child: Row(
              children: [
                SizedBox(height:50.h, width: 151.w,
                  child: ElevatedButton(onPressed:(){
                    Navigator.of(context).pop();
                  },
                    child: Text("Discard"),
                    style:ElevatedButton.styleFrom(elevation: 100,
                     backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(15)
                     ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(height:50.h, width: 151.w,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(_box1value == true && _box2value == true){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> const NewPhoto()));
                          setState(() {
                            _box1value = false; _box2value = false;
                          });
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "Read Terms & Conditions",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black26,
                            textColor: Colors.white,
                            fontSize: 18.0,
                          );
                        }
                      });
                    },
                      child: Text("Participate"),style:ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purpleAccentColors, shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),),
                    )),
              ],
            ),
          ),
        ],
        content:
        Container( height: 420.h,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Upload Photo",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  DottedBorder(
                      padding: const EdgeInsets.all(30),
                      color: Colors.grey,
                      strokeWidth: 1,
                      child:const Icon(
                        Icons.image_outlined,
                        color: Colors.grey,)
                  ),
                  SizedBox(width: 15.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text("Upload Your Photo Here",
                     style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w500,
                     ),
                   ),
                   SizedBox(height: 10.h,),
                   Text("You must Upload at least 1\nPhoto of type .jpg or .png ",
                     style: TextStyle(
                         color: Colors.grey,
                         fontSize: 12.sp,
                         fontWeight: FontWeight.w400,
                     ),
                   ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Text("Rules for Participation",
                style: TextStyle(fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h,),
             Text("You Must follow the rules to participate in the contest:\n \u2022 Here ipsum dolor sit amet, consectetuer.\n \u2022 Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.\n \u2022 Cras dapibus. Vivamus elementum semper nisi.",
                 style: GoogleFonts.nunito(
                     color: Colors.grey, fontSize: 14.sp),),
            SizedBox(height: 20.h,),
             Row(
                children: [
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState){
                      return Checkbox(
                        value: _box1value,
                        activeColor: AppColors.purpleAccentColors,
                        onChanged:(bool? box1){
                        setState(() {
                          _box1value = box1!;
                        });
                      },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Set size to shrinkWrap
                        visualDensity: VisualDensity.compact,);
                    },
                  ),Text("I Agree & Accept Privacy Policy",
                    style: TextStyle(fontSize: 12.sp),),
                ],
              ),

              SizedBox(height: 10.h,),
              Row(
                children: [
                  StatefulBuilder( builder: (BuildContext context, StateSetter setState){
                    return Checkbox(value: _box2value,
                      activeColor: AppColors.purpleAccentColors,
                      onChanged:(bool? box2){
                      setState(() {
                        _box2value = box2!;
                      });
                    },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Set size to shrinkWrap
                      visualDensity: VisualDensity.compact,);
                  }
                  ),   Text("I Agree & Accept General Terms & Conditions",
                    style: TextStyle(fontSize: 12.sp),),
                ],
              ),
            ],
          ),
        ),
      ),);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h,),
                Text("Beard Contest", style: GoogleFonts.nunito(
                    fontSize: 24.sp, fontWeight: FontWeight.bold),),
                Text("Participate in the Contest",
                  style: GoogleFonts.nunito(
                      color: AppColors.whiteGrayColors,
                      fontSize: 16.sp),),
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
                        Text("Contest Ends in", style: TextStyle(fontSize: 16.sp) ,),
                        SizedBox(height: 25.h,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 55.w)),
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
                Text("Description", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
                  style: GoogleFonts.nunito(color: AppColors.whiteGrayColors, fontSize: 16.sp),),

                SizedBox(height: 20.h,),
                Text("Advantages", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.  Aenean commodo ligula eg  Aenean comm ligula eg.",
                  style: GoogleFonts.nunito(color: AppColors.whiteGrayColors, fontSize: 16.sp),),

                SizedBox(height: 20.h,),
                Text("How to Join?", style: GoogleFonts.nunito(fontSize: 18),),
                SizedBox(height: 15.h,),
                Text("The Steps are Given Below:\n \u2022 Here ipsum dolor sit amet, consectetuer.\n \u2022 Hpsum dolor sit amet, consectetuer hasellus viverra nulla ut metus varius laoreet.\n \u2022 Cras dapibus. Vivamus elementum semper nisi.",
                  style: GoogleFonts.nunito(color: AppColors.whiteGrayColors, fontSize: 16.sp),),
                SizedBox(height: 30.h,),
                CustomElevatedButton(
                    onPressed:(){
                  _ShowDialog();
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Participate(),));
                }, label:"Continue To Participate"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
