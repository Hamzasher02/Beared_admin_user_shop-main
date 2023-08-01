import 'package:beared_friend/Admin%20Module/lib/screens/ProfileScreen/profile.dart';
import 'package:beared_friend/Admin%20Module/lib/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../Providers/dashBoard_provider.dart';
import '../../utils/colors.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AdminDashBoardProvider>(context, listen: false)
        .getProviderDashboard();
    super.initState();
    }
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 405.h,
                  width: 428.w,
                  child: Stack(
                    children: [
                      Image.asset(
                        beard,
                        fit: BoxFit.fill,
                        width: 428.w,
                      ),
                      Image.asset(
                        shade,
                        fit: BoxFit.fill,
                        width: 428.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 67.h, left: 362.w),
                        child: InkWell(
                          onTap: () {
                            Get.to(()=>const AdminProfile());
                          },
                          child: Container(
                            height: 40.h,
                            width: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: iconbg,
                            ),
                            child: const Icon(
                              Icons.settings,
                              color: iconwhite,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 350.h, left: 24.w),
                        child: Text(
                          "Andre Genze",
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 383.h, left: 24.w),
                        child: Text(
                          "Admin",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.38),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Nunito"),
                        ),
                      )
                    ],
                  ),
                ),
          Consumer<AdminDashBoardProvider>(
              builder: (context , provider,child){
                if (loading == false) {
                  provider.getProviderDashboard().then((value) {
                    return loading = true;
                  });
                }
                return provider.loading
                    ? const Center(
                  child: CircularProgressIndicator( color: Colors.blue,),
                )
                    : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 145.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: containerbg),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_sharp,
                                      color: iconwhite,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text(
                                      "Members",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          provider.adminDashBoardModel[0].registeredMember.toString(),
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Nunito"),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Registered Members",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: textwhite.withOpacity(.60),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 56.h,
                                      width: 1.w,
                                      color: textwhite.withOpacity(.20),
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          provider.adminDashBoardModel[0].activeMembers.toString(),
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Nunito"),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Active Members",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: textwhite.withOpacity(.60),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 145.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: containerbg),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      barbershop,
                                      height: 20.h,
                                      width: 19.w,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text(
                                      "Barbershop's",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          provider.adminDashBoardModel[0].registeredBarberShops.toString(),
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Nunito"),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Registered Barbershop's",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: textwhite.withOpacity(.60),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 56.h,
                                      width: 1.w,
                                      color: textwhite.withOpacity(.20),
                                    ),
                                    const Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          provider.adminDashBoardModel[0].activeBarberShops.toString(),
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Nunito"),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "Active Barbershop's",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: textwhite.withOpacity(.60),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 135.h,
                              width: 179.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: containerbg),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Image.asset(
                                    stamp,
                                    height: 24.h,
                                    width: 24.h,
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    provider.adminDashBoardModel[0].stampAssigned.toString(),
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Nunito"),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Stamps Assigned",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: textwhite.withOpacity(.60),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 135.h,
                              width: 179.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: containerbg),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Image.asset(
                                    trophy,
                                    height: 24.h,
                                    width: 24.h,
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    provider.adminDashBoardModel[0].contestParticpants.toString(),
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Nunito"),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Contest Participants",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: textwhite.withOpacity(.60),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  );
                 }
                )
              ],
            ),
      ),
    );
  }
}
