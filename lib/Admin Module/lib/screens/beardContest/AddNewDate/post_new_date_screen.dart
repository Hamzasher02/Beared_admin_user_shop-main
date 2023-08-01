import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../Providers/BeardContestProvider/add_new_date_provider.dart';
import '../../../Utils/app_constant.dart';
import '../../../utils/colors.dart';


void AlertBoxAddNewDate(BuildContext context) {

  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Form(
        key: _formKey,
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Dialog(
              elevation: 0,
              backgroundColor: containerbg,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              child: Container(
                height:390.h,
                width: 378.w,
                child: Padding(
                  padding: EdgeInsets.all(25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Update Contest Countdown",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: textwhite.withOpacity(.87),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      ),
                      SizedBox(
                        height: 20.h
                      ),
                      Text(
                        "Start Date",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: textwhite.withOpacity(.60),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      ),
                      SizedBox(
                        height: 15.h
                      ),
                      Container(
                        height: 50.h,
                        width: 328.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: background),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w, bottom: 5.h),
                          child: TextFormField(
                            controller: startController,
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.60),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),

                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Select Start date",
                                hintStyle: TextStyle(
                                    fontSize: 16.sp,
                                    color: textwhite.withOpacity(.60),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Nunito"),

                                suffixIcon: InkWell(
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                            2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      if (kDebugMode) {
                                        print(
                                            pickedDate);
                                      } //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                      if (kDebugMode) {
                                        print(
                                            formattedDate);
                                      } //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement

                                      setState(() {
                                        startController.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } else {
                                      if (kDebugMode) {
                                        print("Date is not selected");
                                      }
                                    }
                                  },
                                  child: Icon(
                                    Icons.calendar_month_rounded,
                                    color: textwhite,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h
                      ),
                      Text(
                        "End Date",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: textwhite.withOpacity(.60),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      ),
                      SizedBox(
                        height: 15.h
                      ),
                      Container(
                        height: 50.h,
                        width: 328.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: background),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w, bottom: 5.h),
                          child: TextFormField(
                            controller: endController,
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.60),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito"),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Select End date",
                                hintStyle: TextStyle(
                                    fontSize: 16.sp,
                                    color: textwhite.withOpacity(.60),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Nunito"),
                                suffixIcon: InkWell(
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                            2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      if (kDebugMode) {
                                        print(
                                            pickedDate);
                                      } //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                      if (kDebugMode) {
                                        print(
                                            formattedDate);
                                      } //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement

                                      setState(() {
                                        endController.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    }
                                  },
                                  child: const Icon(
                                    Icons.calendar_month_rounded,
                                    color: textwhite,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Consumer<PostDateProvider>(
                            builder: (context, postDateProvider, child) {
                              bool isLoading = postDateProvider.loading;
                              return InkWell(
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                    );
                                    await postDateProvider.starPostDate(
                                      context: context,
                                      startTime: startController.text.trim().toString(),
                                      endTime: endController.text.trim().toString(),
                                    );
                                    Navigator.of(context).pop();
                                    AppConstants.flutterToast(message: "Date added successfully.");
                                  } else {
                                    AppConstants.flutterToast(message: "Please fill in all fields.");
                                  }
                                },
                                child: Container(
                                  height: 50.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    color: btnbgpurple,
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  child: Center(
                                    child: isLoading
                                        ? const CircularProgressIndicator()
                                        : Text(
                                      "Update",
                                      style: TextStyle(
                                        color: textwhite.withOpacity(.87),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
