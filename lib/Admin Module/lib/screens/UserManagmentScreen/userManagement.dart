import 'package:beared_friend/Admin%20Module/lib/utils/appurls.dart';
import 'package:beared_friend/Admin%20Module/lib/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Providers/member_block_provider.dart';
import '../../Providers/member_delete_provider.dart';
import '../../Providers/user_baraber_shop_block_provider.dart';
import '../../Providers/user_baraber_shop_delete_provider.dart';
import '../../Providers/user_managment_provider.dart';
import '../../Providers/user_member_provider.dart';
import '../../utils/images.dart';

class UserManagement extends StatefulWidget {
  const UserManagement({super.key});

  @override
  State<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagement> {
  final List<bool> _expension = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool loading = false;
  get index => 0;

  int _isListVisible = 1;

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AdminBaraberShopProvider>(context, listen: false).getBaraberShopData();
    Provider.of<AdminUserMemberProvider>(context, listen: false).getUserMemberData();
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
                height: 90.h,
              ),
              Text(
                "Users",
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
                "Manage Members or Barbershop's",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito"),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isListVisible = 1;
                      });
                    },
                    child: Container(
                      width: 177.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: _isListVisible == 1 ? btnbgpurple : containerbg),
                      child: Center(
                        child: Text(
                          "Members",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: _isListVisible == 1
                                  ? textwhite.withOpacity(.87)
                                  : textwhite.withOpacity(.38),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isListVisible = 2;
                      });
                    },
                    child: Container(
                      width: 177.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: _isListVisible == 2 ? btnbgpurple : containerbg),
                      child: Center(
                        child: Text(
                          "Barbershops",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: _isListVisible== 2
                                  ? textwhite.withOpacity(.87)
                                  : textwhite.withOpacity(.38),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),

              _isListVisible == 1
                  ? Consumer<AdminUserMemberProvider>(
                builder: (context, memberProvider, child) {
                  if (loading == false) {
                    memberProvider.getUserMemberData().then((value) {
                      return loading = true;
                    });
                  }
                  return memberProvider.loading
                      ? const Center(
                       child: CircularProgressIndicator( color: Colors.blue,),
                  )
                      : SizedBox(
                    height: 630.h,
                    child: ListView.builder(
                      itemCount: memberProvider.userMemberModel[0].members.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Container(
                            height: _expension[index] ? 110.h : 80.h,
                            width: 370.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: containerbg,
                            ),
                            child: Row(
                              children: [
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
                                      memberProvider.userMemberModel[0].members[index].email.toString(),
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),

                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    _expension[index]
                                        ? Row(
                                            children: [
                                              Consumer<AdminUserMemberBlockProvider>(
                                                builder: (context,blockProvider, child){
                                                  return InkWell(
                                                    onTap: () {
                                                      blockProvider.putBlockMemberUser(memberProvider
                                                          .userMemberModel[0].members[index].id.toString()).then((value) {
                                                        memberProvider.getUserMemberData();
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 33.h,
                                                      width: 97.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                          color: textwhite
                                                              .withOpacity(.38)),
                                                      child: Center(
                                                        child: Text(
                                                          "Block User",
                                                          style: TextStyle(
                                                              fontSize: 14.sp,
                                                              color: textwhite
                                                                  .withOpacity(.87),
                                                              fontWeight:
                                                              FontWeight.w600,
                                                              fontFamily: "Nunito"),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Consumer<AdminUserMemberDeleteProvider>(
                                                  builder: (context, deleteProvider, child) {
                                                return InkWell(
                                                  onTap: () {
                                                    deleteProvider.deleteMemberUser(memberProvider.userMemberModel[0]
                                                        .members[index].id.toString()).then((value) {
                                                      memberProvider.getUserMemberData();
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 33.h,
                                                    width: 71.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.r),
                                                        color: btnbgred),
                                                    child: Center(
                                                      child: Text(
                                                        "Delete",
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: textwhite
                                                                .withOpacity(.87),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                "Nunito"),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ],
                                          )
                                        : const Text("")
                                  ],
                                ),
                                const Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _expension[index] = !_expension[index];
                                      });
                                    },
                                    child: _expension[index]
                                        ? Icon(Icons.keyboard_arrow_up_rounded,
                                            color: iconwhite.withOpacity(.60))
                                        : Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: iconwhite.withOpacity(.60))),
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
              )
                  : _isListVisible == 2
                  ? Consumer<AdminBaraberShopProvider>(
                builder: (context, provider, child) {
                  if (loading == false) {
                    provider.getBaraberShopData().then((value) {
                      return loading = true;
                    });
                  }
                  return provider.loading
                      ? const Center(
                    child: CircularProgressIndicator( color: Colors.blue,),
                  )
                      : SizedBox(
                    height: 630.h,
                    child: ListView.builder(
                      itemCount: provider.userBaraberShopModel[0].barbers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Container(
                            height: _expension[index] ? 140.h : 108.h,
                            width: 370.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: containerbg,
                            ),
                            child: Row(
                              children: [
                                _expension[index]
                                    ? Container(
                                  height: 140.h,
                                  width: 95.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(20.r),
                                       child:provider.userBaraberShopModel[0].barbers[index].profilePicture.isEmpty?
                                       Image.network(AppUrl.imageUrl+provider.userBaraberShopModel[0]
                                           .barbers[index].profilePicture.toString(),
                                         fit: BoxFit.fill,
                                       ):Image.asset(productpic,fit: BoxFit.fill,),
                                     ),
                                )
                                    : Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Container(
                                    height: 70.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(200),
                                        color: textwhite),
                                    child: ClipOval(child:provider.userBaraberShopModel[0].barbers[index].profilePicture.isEmpty ?
                                    Image.network(AppUrl.imageUrl+provider.userBaraberShopModel[0].barbers[index].profilePicture.toString(),
                                      fit: BoxFit.cover,
                                    ):Image.asset(profile,fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      provider.userBaraberShopModel[0].barbers[index].name.toString(),
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: textwhite.withOpacity(.87),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Nunito"),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 200.w,
                                      child: Text(
                                        provider.userBaraberShopModel[0].barbers[index].email.toString(),
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: textwhite.withOpacity(.60),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Nunito"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    _expension[index]
                                        ? Row(
                                      children: [
                                        Consumer<AdminUserBaraberShopBlockProvider>(
                                          builder: (context,blockProvider, child){
                                            return InkWell(
                                              onTap: () {
                                                blockProvider.blockManagementUser(provider
                                                    .userBaraberShopModel[0].barbers[index].id.toString()).then((value) {
                                                  provider.getBaraberShopData();
                                                });
                                              },
                                              child: Container(
                                                height: 33.h,
                                                width: 97.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10.r),
                                                    color: textwhite
                                                        .withOpacity(.38)),
                                                child: Center(
                                                  child: Text(
                                                    "Block User",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: textwhite
                                                            .withOpacity(.87),
                                                        fontWeight:
                                                        FontWeight.w600,
                                                        fontFamily: "Nunito"),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Consumer<AdminUserBaraberShopDeleteProvider>(
                                            builder: (context, deleteProvider, child) {
                                              return InkWell(
                                                onTap: () {
                                                  deleteProvider.deleteManagementUser(provider.userBaraberShopModel[0]
                                                      .barbers[index].barberId!.id.toString()).then((value) {
                                                    provider.getBaraberShopData();
                                                  });
                                                },
                                                child: Container(
                                                  height: 33.h,
                                                  width: 71.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(10.r),
                                                      color: btnbgred),
                                                  child: Center(
                                                    child: Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: textwhite
                                                              .withOpacity(.87),
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          fontFamily:
                                                          "Nunito"),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ],
                                    )
                                        : const Text("")
                                  ],
                                ),
                               const Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _expension[index] = !_expension[index];
                                      });
                                    },
                                    child: _expension[index]
                                        ? Icon(Icons.keyboard_arrow_up_rounded,
                                        color: iconwhite.withOpacity(.60))
                                        : Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: iconwhite.withOpacity(.60))),
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
              )
                  :Container(),
            ],
          ),
        ),
      ),
    );
  }
}
