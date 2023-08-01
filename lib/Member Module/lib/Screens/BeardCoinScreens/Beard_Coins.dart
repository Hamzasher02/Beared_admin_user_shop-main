
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../BarbarProfileScreen/creative_cuts_barber_profile_collections.dart';

class BeardCoinsScreen extends StatefulWidget {
  const BeardCoinsScreen({Key? key}) : super(key: key);

  @override
  State<BeardCoinsScreen> createState() => _BeardCoinsScreenState();
}

class _BeardCoinsScreenState extends State<BeardCoinsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> arrOptions = [
      'Creative Cuts',
      'Sunset Barbar',
      'Style Cave',
      'The Urban Shave',
      'Medal Barbar',
    ];
    List<String> arrimg = [
      'assets/images/shop1.png',
      'assets/images/shop2.png',
      'assets/images/shop3.png',
      'assets/images/shop4.png',
      'assets/images/shop5.png',
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  "Beard Coins",
                  style: GoogleFonts.nunito(
                      fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Your Collections",
                  style: GoogleFonts.nunito(
                      color: AppColors.whiteGrayColors, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 40.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, int index) => Padding(
                    padding: EdgeInsets.only(bottom: 8.0.h),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0.r)),
                      child: Container(
                        alignment: Alignment.center,
                        height: 90.h,
                        child: ListTile(
                          onTap: () {
                            Get.to(
                                const CreativeCutsBarberProfileCollections());
                          },
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(arrimg[index]),
                            radius: 30.r,
                          ),
                          title: Text(
                            arrOptions[index],
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 25.h,
                                width: 64.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Text(
                                  '03/10',
                                  style: GoogleFonts.nunito(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text('Coins Collected',
                                  style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  )),
                            ],
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.white38, size: 15.sp),
                        ),
                      ),
                    ),
                  ),
                  itemCount: arrOptions.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
