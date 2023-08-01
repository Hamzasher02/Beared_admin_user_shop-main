
import 'package:beared_friend/Member%20Module/lib/Screens/shopping%20screens/Cart_screen.dart';
import 'package:beared_friend/Member%20Module/lib/Screens/shopping%20screens/payment%20method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_elevated_button_widget.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {

  List<String> arrsub= ["Rheinland-Pfalz","Lützowplatz Rhein"];
  List<String> arrtitle= ["Home","Work"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ));
                    },
                  ),

          SizedBox(height: 35.h,),
          Text("Delivery", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          Text("Choose Address for Delivery",style: TextStyle(color: Colors.white60),),
            SizedBox(height: 30.h,),
            Container(height: 121.h,width: 378.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color:Color.fromRGBO(186, 94, 239, 1)),
              child: Padding(
                padding:EdgeInsets.only(left:15.0.sp,top:10.sp,right: 10.sp,bottom: 10.h),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Spacer(),
                    Row(
                      children: [Spacer(),
                        Icon(Icons.edit,color: Colors.white,size: 15,),
                      ],
                    ),
                    // SizedBox(height: 15.h,),
                    Text("Nouman",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 5.h,),
                    Text("PI-133, Lützowplatz 73, Heddert,\nRheinland-Pfalz, Germeny",
                      style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
                  Row(
                    children: [
                      Text("My Addresses", style: TextStyle(color: Colors.white60, fontSize: 18),),
                      Spacer(),
                      SizedBox( height: 33.h , width: 110.w,
                        child: ElevatedButton(onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => View_all_contest(),));
                        }, child: Text("Add Address", style: TextStyle(fontSize: 12),),
                          style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  ListView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          // onTap: (){Navigator.push(context, MaterialPageRoute(
                          //   builder: (context)=> ,));},
                          child: Container(
                            padding: EdgeInsets.only(left: 20.w,right: 10.w),
                            margin: EdgeInsets.only(bottom: 15.h),
                            width: 365.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container( height: 60.h,width: 60.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white, borderRadius: BorderRadius.circular(10.r),
                                  ), child: Image.asset("assets/images/home.png"),
                                ),
                                SizedBox(width: 25.w,),
                                Column( crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [SizedBox(height: 30.h,),
                                    Text(arrtitle[index],style: TextStyle(color:Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                                    Text(arrsub[index],style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  ],
                                ),
                              ],
                            ), ),
                        );}
                  ),

                  SizedBox(height: 80.h,),
                  CustomElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                  }, label: "Continue"),

                ],
          ),
        ),
      ),
    ),
    );
  }
}
