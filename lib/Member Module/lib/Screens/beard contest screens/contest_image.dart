
import 'package:beared_friend/Member%20Module/lib/Screens/beard%20contest%20screens/view_all_contest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContestImage extends StatefulWidget {
  const ContestImage({Key? key}) : super(key: key);

  @override
  State<ContestImage> createState() => _ContestImageState();
}

class _ContestImageState extends State<ContestImage> {

  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/contest_img.png",),
            Positioned(top:60.h, left: 20.w,
            child: InkWell(
              child: Container(
                  height: 40.h,width: 40.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                child: Image.asset("assets/images/arrow head.png")),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ViewAllContest(),));
              },)),
            Positioned( bottom: 40.h,right: 10.w,
                child: Container( height: 60.h, width: 380.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Colors.black87,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 25.w,),
                    Text("927 Votes",
                      style:TextStyle(
                        fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70,
                      ),
                    ),
                    SizedBox(width: 210.w,),
                    IconButton(onPressed: (){
                      setState(() {
                        like = !like;
                      });
                    }, icon:Icon(Icons.thumb_up_sharp,color: like ? const Color(0xffFFA500) : Colors.white,)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
