
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../BarbarShopScreen/BarbarShopComponents/Filter_widget.dart';
import '../BarbarProfileScreen/creative_cuts_barber_profile_collections.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  void _ShowDialog(){
    showDialog(context: context,barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        insetPadding: EdgeInsets.all(15.sp),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Text("Update Your Reservation",
          style: TextStyle(
          fontSize: 20.sp,
         fontWeight: FontWeight.w700,
         color: AppColors.textWhiteColors,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0.sp),
            child: Row(
              children: [
                SizedBox(
                    height:50.h,
                    width: 151.w,
                    child: ElevatedButton(onPressed:(){
                      Navigator.of(context).pop();
                    },style:ElevatedButton.styleFrom(
                      elevation: 100,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                      ),
                    ), child: Text("Delete",
                      style: TextStyle(
                          color: AppColors.textWhiteColors,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    ),
                ),
                Spacer(),
                SizedBox(height:50.h, width: 151.w,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                      style:ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purpleAccentColors,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r)
                     ),
                    ),
                      child: Text("Change",
                    style: TextStyle(
                      color: AppColors.textWhiteColors,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700
                     ),
                    ),
                   ),
                ),
              ],
            ),
          ),
        ],
        content:
        Container(height: 250.h,
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Date",
                style: TextStyle(fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white60Colors,
                ),
              ),
              SizedBox(height: 10.h,),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Date',
              suffixIcon: Icon(Icons.calendar_today,
                color: Colors.white,
              ),
              ),
            ),
              SizedBox(height: 15.h,),
              Text("Available Slots",
                style: TextStyle(
                  fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color:AppColors.white60Colors,
                ),),
              SizedBox(height: 15.h,),
              Wrap(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: FilterTextWidget(text: "4:00 PM"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: FilterTextWidget(text: "6:00 PM"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: FilterTextWidget(text: "8:00 PM"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: FilterTextWidget(text: "9:00 PM"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0.sp),
                    child: FilterTextWidget(text: "10:00 PM"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17.0),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(child: Container( height: 40.h,width: 20.w,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/images/arrow head.png")),
                  onTap: (){
                    Get.to(const CreativeCutsBarberProfileCollections());
                  },),
               SizedBox(height: 30.h,),
               Text("Reservations",
                    style: GoogleFonts.nunito(
                   fontSize: 24.sp,
                 fontWeight: FontWeight.w700,
               ),
               ),
               Text("All of Your Reservations",
               style: GoogleFonts.nunito(
                   color: AppColors.whiteGrayColors,
                   fontSize: 16.sp),),
               SizedBox(height: 40.h,),
               ListView.builder(
                  shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, int index) =>
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          alignment: Alignment.center,
                          height: 90,
                          child: ListTile(
                            onTap: () =>
                              _ShowDialog(),
                            leading: CircleAvatar (
                              backgroundImage:const AssetImage("assets/images/shop1.png"),
                              radius: 30.r,
                            ),
                            title: Text('Creative Cuts',
                              style: GoogleFonts.nunito(fontSize: 18.sp,
                                  color: Colors.white,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                 Text("4:00 PM on 04-03-2023",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white
                                ),),
                                SizedBox(width: 5.w,),
                                const Icon(Icons.edit,color: Colors.white,),
                              ],
                            ),
                            trailing:  Icon(Icons.arrow_forward_ios_sharp,
                                color:Colors.white38,size: 15.sp),
                          ),
                        ),
                      ),
                  itemCount: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}