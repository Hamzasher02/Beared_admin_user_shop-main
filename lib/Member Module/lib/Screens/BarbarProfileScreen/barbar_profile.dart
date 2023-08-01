
import 'package:beared_friend/Member%20Module/lib/Screens/ReservationScreen/resevation_screen.dart';
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/appimages.dart';
import '../../Widgets/barbar_details_row_widgets.dart';
import '../../Widgets/header_text_widgets.dart';
import '../../Widgets/price_list_row_widgets.dart';
import '../BarbarShopScreen/BarbarShopComponents/Filter_widget.dart';
import '../BeardCoinScreens/Beard_Coins.dart';
import 'barbar_profile_campaign.dart';

class BarbarProfileScreen extends StatefulWidget {
  const BarbarProfileScreen({Key? key}) : super(key: key);

  @override
  State<BarbarProfileScreen> createState() => _BarbarProfileScreenState();
}

class _BarbarProfileScreenState extends State<BarbarProfileScreen> {
  void _ShowDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        insetPadding: EdgeInsets.all(15.sp),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          "Book a Reservation",
          style: TextStyle(fontSize: 18.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0.sp),
            child: Row(
              children: [
                SizedBox(
                  height: 50.h,
                  width: 151.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 100,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: AppColors.white60Colors,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50.h,
                  width: 151.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const ReservationScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purpleAccentColors,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text(
                      "Book",
                      style: TextStyle(
                        color: AppColors.white60Colors,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        content: Container(
          height: 250.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Date",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white60,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Available Slots",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60),
              ),
              SizedBox(
                height: 15.h,
              ),
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
  bool icon = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  child: Image.asset(
                AppImages.creativeCutsImg,
              )),
              Positioned(
                  top: 60.h,
                  left: 20.w,
                  child: InkWell(
                    child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Image.asset(AppImages.arrowHeadImg)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BeardCoinsScreen(),
                          ));
                    },
                  )),
              Positioned(
                top: 60.h,
                right: 20.w,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleAccentColors),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.favorite, size: 17.sp),
                      color: icon ? Colors.red : Colors.white,
                      onPressed: () {
                        setState(() {
                          icon = true;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              padding: EdgeInsets.all(19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Creative Cuts",
                            style: GoogleFonts.nunito(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 19.h,
                            width: 50.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.sp,
                                  color: Colors.black,
                                ),
                                Text(
                                  '4.9',
                                  style: GoogleFonts.nunito(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          SizedBox(
                            width: 114.w,
                            height: 40.h,
                            child: ElevatedButton(
                              onPressed: () {
                                _ShowDialog();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors
                                    .purpleAccentColors, //background color of button
                                //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text(
                                "Reservation",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white60Colors),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Koln-Germany",
                        style: GoogleFonts.nunito(
                          color: AppColors.whiteGrayColors,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const HeaderTextWidgets(title: "Choose Campaign"),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const BarbarProfileCampaignScreen());
                    },
                    child: Container(
                      height: 60.h,
                      width: 378.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.black38),
                      child: Padding(
                        padding: EdgeInsets.all(20.0.sp),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Choose A Compaign",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14.sp,
                              color: AppColors.white60Colors,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "About"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "vLorem ipsum dolor sit amet, consectetuer adipiscing elit.\n"
                    "Aenean commodo ligula eget dolor. Aenean mass. Aenean\n"
                    "commodo ligula eg  Aenean comm ligula eg.Lorem ipsum\n"
                    "dolor sit amet, consectetuer adipiscing elit. Aenean comm\n"
                    "odo ligula eget dolor. Aenean massa. Aenean commodo\n"
                    "ligula eg  Aenean comm ligula eg.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteGrayColors,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "Barbar Details"),
                  SizedBox(
                    height: 20.h,
                  ),
                  const BarbarDetailsRow(
                      title: "Address", name: "Koln-Germany"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const BarbarDetailsRow(
                      title: "Web", name: "www.creativecut-cologne.de"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const BarbarDetailsRow(title: "Tel", name: "+49 221 934590"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const BarbarDetailsRow(
                      title: "Mail", name: "contact@creativecut.cologne.de"),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "Shop Details"),
                  SizedBox(
                    height: 20.h,
                  ),
                  const BarbarDetailsRow(title: "Sits", name: "12"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const BarbarDetailsRow(
                      title: "Languages", name: "English,Austrian & Egyptian"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const BarbarDetailsRow(title: "Staff", name: "6 Members"),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "Price List"),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PriceListRow(title: "Hair Cut", name: "14 \$"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Hair Cut & Style", name: "14 \$"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Hair Cut & Beard", name: "14 \$"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Beard Only", name: "14 \$"),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "Opening Timing"),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PriceListRow(title: "Monday", name: "9:00 to 17:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Tuesday", name: "9:00 to 17:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Wednesday", name: "9:00 to 17:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Thursday", name: "9:00 to 17:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Friday", name: "9:00 to 16:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Saturday", name: "9:00 to 14:00"),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PriceListRow(title: "Sunday", name: "Closed"),
                  SizedBox(
                    height: 30.h,
                  ),
                  const HeaderTextWidgets(title: "Portfolio"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 330.h,
                    width: 370.w,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/haircut1.png",
                                width: 196.w, height: 172.h),
                            Column(
                              children: [
                                Image.asset("assets/images/haircut2.png",
                                    width: 132.w, height: 81.h),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Image.asset("assets/images/haircut4.png",
                                    width: 132.w, height: 81.h),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset("assets/images/haircut3.png",
                            width: 338.w, height: 108.h),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
