import 'package:beared_friend/Admin%20Module/lib/Providers/recent_winner_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/beardContest/BeardContestResult/beardResult.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/beardContest/AddNewDate/post_new_date_screen.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../Providers/BeardContestProvider/beard_contest_detele_provider.dart';
import '../../Providers/BeardContestProvider/beard_contest_provider.dart';
import '../../Providers/BeardContestProvider/beard_contest_shop_block_provider.dart';
import '../../Providers/BeardContestProvider/contest_time_provider.dart';
import '../../utils/appurls.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import 'UpdateDate/update_popup.dart';

class BeardContest extends StatefulWidget {
  const BeardContest({super.key});

  @override
  State<BeardContest> createState() => _BeardContestState();
}

class _BeardContestState extends State<BeardContest> {
  final List<bool> _expension = [false, false, false, false];

  final CountDownController _dayController = CountDownController();
  final CountDownController _hourController = CountDownController();
  final CountDownController _minController = CountDownController();

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AdminBeardContestProvider>(context, listen: false)
        .getUserBeardContest();
    Provider.of<AdminBeardRecentWinnerProvider>(context, listen: false)
        .getBeardContestRecentWinner();
    Provider.of<AdminContestTimeProvider>(context, listen: false)
        .getContestTime();
    super.initState();
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Consumer<AdminBeardContestProvider>(
            builder: (context, provider1, child) {
              if (loading == false) {
                provider1.getUserBeardContest().then((value) {
                  return loading = true;
                });
              }
              return provider1.loading
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 250),
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90.h
                        ),
                        Text(
                          "Beard Contest",
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 5.h
                        ),
                        Text(
                          "Manage the Contest",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.38),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          height: 30.h
                        ),
                        provider1.beardContestModel[0].participants.isEmpty
                            ? Container(
                                height: 100.h,
                                width: 378.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: containerbg),
                                child: Center(
                                  child: Text(
                                    "No Contest is Going On",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                              )
                            : Container(
                                height: 162.h,
                                width: 378.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: containerbg),
                                child: Consumer<AdminContestTimeProvider>(
                                    builder: (context, timeProvider, child) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 15.h, left: 340.w),
                                            child: InkWell(
                                              onTap: () {
                                                print("timeId ${timeProvider.contestTimeModel[0].contests.id.toString()}");
                                                UpdateTimeAlertBox(
                                                  context,
                                                  timeProvider.contestTimeModel[0].contests.id.toString(),
                                                  timeProvider.contestTimeModel[0].contests.days.toString(),
                                                  timeProvider.contestTimeModel[0].contests.minutes.toString(),
                                                );
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color: iconwhite,
                                                size: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Contest Ends In",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: textwhite.withOpacity(.87),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Nunito"),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () => _dayController.start(),
                                            child: CircularCountDownTimer(
                                              // timeProvider.contestTimeModel!.contests.days
                                              duration: 10,
                                              initialDuration: 0,
                                              controller: _dayController,
                                              width: 60.h,
                                              height: 60.h,
                                              ringColor: Colors.grey[300]!,
                                              fillColor: progressIndicator,
                                              strokeWidth: 2.0,
                                              strokeCap: StrokeCap.round,
                                              textStyle: TextStyle(
                                                fontSize: 18.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textFormat: CountdownTextFormat.S,
                                              isReverse: true,
                                              isReverseAnimation: true,
                                              isTimerTextShown: true,
                                              autoStart: false,
                                              onStart: () {
                                                debugPrint('Countdown Started');
                                              },
                                              onComplete: () {
                                                debugPrint('Countdown Ended');
                                              },
                                              onChange: (String timeStamp) {
                                                debugPrint(
                                                    'Countdown Changed $timeStamp');
                                              },
                                              timeFormatterFunction:
                                                  (defaultFormatterFunction,
                                                      duration) {
                                                if (duration.inSeconds ==
                                                    timeProvider
                                                        .contestTimeModel[0]
                                                        .contests
                                                        .days) {
                                                  return "0D";
                                                } else {
                                                  return Function.apply(
                                                    defaultFormatterFunction,
                                                    [duration],
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () =>
                                                _hourController.start(),
                                            child: CircularCountDownTimer(
                                              duration: 100,
                                              initialDuration: 0,
                                              controller: _hourController,
                                              width: 60.h,
                                              height: 60.h,
                                              ringColor: Colors.grey[300]!,
                                              fillColor: progressIndicator,
                                              strokeWidth: 2.0,
                                              strokeCap: StrokeCap.round,
                                              textStyle: TextStyle(
                                                  fontSize: 18.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textFormat: CountdownTextFormat.S,
                                              isReverse: true,
                                              isReverseAnimation: true,
                                              isTimerTextShown: true,
                                              autoStart: false,
                                              onStart: () {
                                                debugPrint('CountDown Started');
                                              },
                                              onComplete: () {
                                                debugPrint('CountDown Ended');
                                              },
                                              onChange: (String timeStamp) {
                                                debugPrint(
                                                    'Countdown Changed $timeStamp');
                                              },
                                              timeFormatterFunction:
                                                  (defaultFormatterFunction,
                                                      duration) {
                                                if (duration.inSeconds ==
                                                    timeProvider
                                                        .contestTimeModel[0]
                                                        .contests
                                                        .hours) {
                                                  return "0H";
                                                } else {
                                                  return Function.apply(
                                                      defaultFormatterFunction,
                                                      [duration]);
                                                }
                                              },
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () => _minController.start(),
                                            child: CircularCountDownTimer(
                                              duration: 100,
                                              initialDuration: 0,
                                              controller: _minController,
                                              width: 60.h,
                                              height: 60.h,
                                              ringColor: Colors.grey[300]!,
                                              ringGradient: null,
                                              fillColor: progressIndicator,
                                              fillGradient: null,
                                              backgroundColor: null,
                                              backgroundGradient: null,
                                              strokeWidth: 2.0,
                                              strokeCap: StrokeCap.round,
                                              textStyle: TextStyle(
                                                  fontSize: 18.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textFormat: CountdownTextFormat.S,
                                              isReverse: true,
                                              isReverseAnimation: true,
                                              isTimerTextShown: true,
                                              autoStart: false,
                                              onStart: () {
                                                debugPrint('Countdown Started');
                                              },
                                              onComplete: () {
                                                debugPrint('Countdown Ended');
                                              },
                                              onChange: (String timeStamp) {
                                                debugPrint(
                                                    'Countdown Changed $timeStamp');
                                              },
                                              timeFormatterFunction:
                                                  (defaultFormatterFunction,
                                                      duration) {
                                                if (duration.inSeconds ==
                                                    timeProvider
                                                        .contestTimeModel[0]
                                                        .contests
                                                        .minutes) {
                                                  return "0M";
                                                } else {
                                                  return Function.apply(
                                                      defaultFormatterFunction,
                                                      [duration]);
                                                }
                                              },
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      )
                                    ],
                                  );
                                }),
                              ),
                              SizedBox(height: 30.h),
                        provider1.beardContestModel[0].participants.isEmpty
                            ? InkWell(
                                onTap: () {
                                  AlertBoxAddNewDate(context);
                                },
                                child: Container(
                                  height: 60.h,
                                  width: 378.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: btnbgpurple,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Start New",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  Get.to(() => BeardResult());
                                },
                                child: Container(
                                  height: 60.h,
                                  width: 378.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: btnbgpurple),
                                  child: Center(
                                    child: Text(
                                      "View Results",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                ),
                              ),
                        provider1.beardContestModel[0].participants.isEmpty
                            ? SizedBox(
                                height: 400,
                                child: Center(
                                  child: Text(
                                    "No Participants Here",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Nunito"),
                                  ),
                                ),
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    "Participants",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: textwhite.withOpacity(.60),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Nunito"),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Consumer<AdminBeardContestProvider>(
                                    builder: (context, provider, child) {
                                      if (loading == false) {
                                        provider
                                            .getUserBeardContest()
                                            .then((value) {
                                          return loading = true;
                                        });
                                      }
                                      return provider.loading
                                          ? const Center(
                                              child: CircularProgressIndicator(
                                                color: Colors.blue,
                                              ),
                                            )
                                          : SizedBox(
                                              height: 400.h,
                                              child: ListView.builder(
                                                itemCount: provider
                                                    .beardContestModel[0]
                                                    .participants
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.h),
                                                    child: Container(
                                                      height: _expension[index]
                                                          ? 134.h
                                                          : 100.h,
                                                      width: 378.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.r),
                                                          color: containerbg),
                                                      child: Row(
                                                        children: [
                                                          _expension[index]
                                                              ? Container(
                                                                  height: 134.h,
                                                                  width: 95.h,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.r),
                                                                    child: provider
                                                                            .beardContestModel[
                                                                                0]
                                                                            .participants[
                                                                                index]
                                                                            .picture
                                                                            .isEmpty
                                                                        ? Image
                                                                            .network(
                                                                            AppUrl.imageUrl +
                                                                                provider.beardContestModel[0].participants[index].picture.toString(),
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          )
                                                                        : Image
                                                                            .asset(
                                                                            productpic,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                  ),
                                                                )
                                                              : Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              12.w),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        70.h,
                                                                    width: 70.h,
                                                                    decoration: const BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color:
                                                                            textwhite),
                                                                    child:
                                                                        ClipOval(
                                                                      child: provider
                                                                              .beardContestModel[0]
                                                                              .participants[index]
                                                                              .picture
                                                                              .isEmpty
                                                                          ? Image.network(
                                                                              AppUrl.imageUrl + provider.beardContestModel[0].participants[index].picture.toString(),
                                                                              fit: BoxFit.cover,
                                                                            )
                                                                          : Image.asset(
                                                                              profile,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                    ),
                                                                  ),
                                                                ),
                                                          SizedBox(
                                                            width: 20.h,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height: 20.h),
                                                              Text(
                                                                "${provider.beardContestModel[0].participants[index].votes.toString()} Votes",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18.sp,
                                                                    color: textwhite
                                                                        .withOpacity(
                                                                            .87),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        "Nunito"),
                                                              ),
                                                              SizedBox(
                                                                  height: 8.h),
                                                              SizedBox(
                                                                width: 160,
                                                                // Set a fixed width for the container
                                                                child: Text(
                                                                  provider
                                                                      .beardContestModel[
                                                                          0]
                                                                      .participants[
                                                                          index]
                                                                      .barberId
                                                                      .toString(),
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.sp,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    color: textwhite
                                                                        .withOpacity(
                                                                            .60),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontFamily:
                                                                        "Nunito",
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 14.h,
                                                              ),
                                                              _expension[index]
                                                                  ? Row(
                                                                      children: [
                                                                        Consumer<
                                                                            BeardContestBlockProvider>(
                                                                          builder: (context,
                                                                              blockProvider,
                                                                              child) {
                                                                            return InkWell(
                                                                              onTap: () {
                                                                                blockProvider.blockBeardContestUser(provider.beardContestModel[0].participants[index].id.toString()).then((value) {
                                                                                  provider.getUserBeardContest();
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                height: 33.h,
                                                                                width: 97.w,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: textwhite.withOpacity(.38)),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Block User",
                                                                                    style: TextStyle(fontSize: 14.sp, color: textwhite.withOpacity(.87), fontWeight: FontWeight.w600, fontFamily: "Nunito"),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              10.w,
                                                                        ),
                                                                        Consumer<
                                                                            AdminBeardContestDeleteProvider>(
                                                                          builder: (context,
                                                                              deleteProvider,
                                                                              child) {
                                                                            return InkWell(
                                                                              onTap: () {
                                                                                deleteProvider.deleteBeardContest(provider.beardContestModel[0].participants[index].id.toString()).then((value) {
                                                                                  provider.getUserBeardContest();
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                height: 33.h,
                                                                                width: 71.w,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: btnbgred),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Delete",
                                                                                    style: TextStyle(fontSize: 14.sp, color: textwhite.withOpacity(.87), fontWeight: FontWeight.w600, fontFamily: "Nunito"),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    )
                                                                  : const Text(
                                                                      "")
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          InkWell(
                                                              onTap: () {
                                                                setState(() {
                                                                  _expension[
                                                                          index] =
                                                                      !_expension[
                                                                          index];
                                                                });
                                                              },
                                                              child: _expension[
                                                                      index]
                                                                  ? Icon(
                                                                      Icons
                                                                          .keyboard_arrow_up_rounded,
                                                                      color: iconwhite
                                                                          .withOpacity(
                                                                              .60))
                                                                  : Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: iconwhite
                                                                          .withOpacity(
                                                                              .60))),
                                                          SizedBox(
                                                            width: 20.h,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                    },
                                  ),
                                ],
                              )
                 ],
              );
            },
          ),
        ),
      ),
    );
  }
}
