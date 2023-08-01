
import 'package:beared_friend/Member%20Module/lib/Screens/BarbarShopScreen/BarbarShopComponents/Filter_widget.dart';
import 'package:beared_friend/Member%20Module/lib/Screens/ReservationScreen/resevation_screen.dart';
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/appimages.dart';
import 'BarbarShopComponents/progress bar_widget.dart';
import 'BarbarShopComponents/search_filter_widget.dart';
import '../BarbarProfileScreen/barbar_profile.dart';

class BarbarShopScreen extends StatefulWidget {
  const BarbarShopScreen({Key? key}) : super(key: key);
  @override
  State<BarbarShopScreen> createState() => _BarbarShopScreenState();
}

class _BarbarShopScreenState extends State<BarbarShopScreen> {
  void _ShowDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        insetPadding: const EdgeInsets.all(12),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: Text(
          "Search Filter",
          style: TextStyle(
            fontSize: 20.sp,
            color: AppColors.textWhiteColors,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20.0.sp),
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
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: AppColors.textWhiteColors,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
                const Spacer(),
                SizedBox(
                  height: 50.h,
                  width: 151.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purpleAccentColors,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text(
                      "Apply",
                      style: TextStyle(
                        color: AppColors.textWhiteColors,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        content: Container(
          height: 420.h,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Sort by",
              style: TextStyle(
                color: AppColors.white60Colors,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Wrap(children: [
              Padding(
                padding: EdgeInsets.all(3.0.sp),
                child: SearchFilterWidget(
                  text: "Distance",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0.sp),
                child: SearchFilterWidget(
                  text: "Price",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0.sp),
                child: SearchFilterWidget(
                  text: "Rating",
                ),
              ),
            ]),
            SizedBox(
              height: 20.h,
            ),
            DistanceFilter(
              distance: 1,
              maxDistance: 99,
              onChanged: (double value) {},
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Language",
              style: TextStyle(
                color: AppColors.white60Colors,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.0.h),
                  child: FilterTextWidget(text: "English"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0.h),
                  child: FilterTextWidget(text: "Cesky"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0.h),
                  child: FilterTextWidget(text: "Български"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0.h),
                  child: FilterTextWidget(text: "Austrian"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0.h),
                  child: FilterTextWidget(text: "Egyptian"),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Sits",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white60Colors,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.0.sp),
                  child: FilterTextWidget(text: "1 - 5"),
                ),
                Padding(
                  padding: EdgeInsets.all(3.0.sp),
                  child: FilterTextWidget(text: "6 - 10"),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  List<String> arrOptions = [
    'Creative Cuts',
    'Sunset Barbar',
    'Style Cave',
  ];
  List<String> arrImg = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
  ];
  List<String> arrSub = [
    'Pindi - 34 Kms',
    'Irale - 54 Kms',
    'Lahore - 21 Kms',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17.0.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Barbar Shops",
                style: GoogleFonts.nunito(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textWhiteColors,
                ),
              ),
              Text(
                "Find Your Barbar Here",
                style: GoogleFonts.nunito(
                    color: AppColors.whiteGrayColors, fontSize: 16),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 60.h,
                width: 378.w,
                child: Row(
                  children: [
                    SizedBox(
                      height: 70.h,
                      width: 303.w,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.search),
                            ),
                            hintText: "Search",
                            suffixIcon: InkWell(
                              onTap: () {
                                _ShowDialog();
                              },
                              child: Image.asset(AppImages.searchFilterImg),
                            ),
                            hintStyle: const TextStyle(
                                color: AppColors.whiteGrayColors),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r))),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    SizedBox(
                      height: 60.h,
                      width: 60.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const ReservationScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.purpleAccentColors,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r),
                          ),
                        ),
                        child: Icon(
                          Icons.calendar_month,
                          size: 22.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Popular Barbers",
                style: GoogleFonts.nunito(
                    color: AppColors.whiteGrayColors, fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) => Padding(
                  padding: EdgeInsets.only(bottom: 8.0.h),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 90.h,
                      child: ListTile(
                        onTap: () {
                          Get.to(const BarbarProfileScreen());
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(arrImg[index]),
                          radius: 30,
                        ),
                        title: Row(
                          children: [
                            Text(
                              arrOptions[index],
                              style: GoogleFonts.nunito(fontSize: 18),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 25.h,
                              width: 64.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.black, size: 15.sp),
                                  Text(
                                    '4.9',
                                    style: GoogleFonts.nunito(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(arrSub[index]),
                        trailing: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.white38, size: 15),
                      ),
                    ),
                  ),
                ),
                itemCount: arrOptions.length,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
