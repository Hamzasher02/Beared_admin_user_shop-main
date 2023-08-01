
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Providers/recent_winner_provider.dart';
import '../../../utils/appurls.dart';
import '../../../utils/colors.dart';
import '../../../utils/images.dart';

class BeardResult extends StatefulWidget {
  @override
  State<BeardResult> createState() => _BeardResultState();
}

class _BeardResultState extends State<BeardResult> {
  bool loading = false;
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AdminBeardRecentWinnerProvider>(context, listen: false)
        .getBeardContestRecentWinner();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 71.h,
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: iconwhite,
                    size: 20.sp,
                  )),
              SizedBox(
                height: 34.h,
              ),
              Text(
                "Contest Result",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: textwhite.withOpacity(.87),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Winner of the Contest ",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Recent Contest Winner",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: textwhite.withOpacity(.60),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Consumer<AdminBeardRecentWinnerProvider>(
             builder: (context,recentProvider,child){
               if (loading == false) {
                 recentProvider.getBeardContestRecentWinner().then((value) {
                   return loading = true;
                 });
               }
               return recentProvider.loading
                   ? const Center(
                 child: CircularProgressIndicator( color: Colors.blue,),
                ) : Container(
                 height: 533.h,
                 width: 378.w,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25.r),
                     color: containerbg),
                 child: Stack(
                   children: [
                     Container(
                       height: 429.h,
                       width: 378.w,
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: recentProvider.resentContestWinnerModel[0].winners.picture.isEmpty?
                         Image.network(
                           AppUrl.imageUrl+recentProvider.resentContestWinnerModel[0].winners.picture.toString(),
                           fit: BoxFit.fill,
                         ):Image.asset(productpic,fit: BoxFit.fill,),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 25.w),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             height: 366.h,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Container(
                                 height: 43.h,
                                 width: 81.w,
                                 decoration: BoxDecoration(
                                     color: btnbgpurple,
                                     borderRadius: BorderRadius.circular(10.r)),
                                 child: Row(
                                   children: [
                                     Spacer(),
                                     Image.asset(trophywhite),
                                     Spacer(),
                                     Text(
                                       "1",
                                       style: TextStyle(
                                           fontSize: 24.sp,
                                           color: textwhite.withOpacity(.87),
                                           fontWeight: FontWeight.w600,
                                           fontFamily: "Nunito"),
                                     ),
                                     Spacer(),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                           SizedBox(
                             height: 54.h,
                           ),
                           Row(
                             children: [
                               Text(
                                 "${recentProvider.resentContestWinnerModel[0].winners.votes.toString()} Votes",
                                 style: TextStyle(
                                     fontSize: 18.sp,
                                     color: textwhite.withOpacity(.87),
                                     fontWeight: FontWeight.w600,
                                     fontFamily: "Nunito"),
                               ),
                               Spacer(),
                               Text(
                                 "24-02-2023",
                                 style: TextStyle(
                                     fontSize: 16.sp,
                                     color: textwhite.withOpacity(.87),
                                     fontWeight: FontWeight.w600,
                                     fontFamily: "Nunito"),
                               ),
                             ],
                           ),
                           SizedBox(
                             height: 10.h,
                           ),
                           SizedBox(
                             width: 220,
                             child: Text(
                               recentProvider.resentContestWinnerModel[0].winners.barberId.email.toString(),
                               style: TextStyle(
                                   fontSize: 14.sp,
                                   color: textwhite.withOpacity(.60),
                                   fontWeight: FontWeight.w600,
                                   fontFamily: "Nunito"),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               );
             },
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Old Contest Winner",
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
                height: 100.h,
                width: 378.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: containerbg),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        height: 70.h,
                        width: 70.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: textwhite),
                        child: Image.asset(profile),
                      ),
                    ),
                    SizedBox(
                      width: 25.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "1455 Votes",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "johnd@gmail.com",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down_rounded,
                            color: iconwhite.withOpacity(.60))),
                    SizedBox(
                      width: 20.h,
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 15.h,
              ),
              Container(
                height: 100.h,
                width: 378.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: containerbg),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        height: 70.h,
                        width: 70.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: textwhite),
                        child: Image.asset(profile),
                      ),
                    ),
                    SizedBox(
                      width: 25.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "1455 Votes",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "johnd@gmail.com",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_down_rounded,
                            color: iconwhite.withOpacity(.60))),
                    SizedBox(
                      width: 20.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
