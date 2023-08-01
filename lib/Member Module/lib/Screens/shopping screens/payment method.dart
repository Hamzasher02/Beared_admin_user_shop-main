
import 'package:beared_friend/Member%20Module/lib/Screens/shopping%20screens/delivery_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_elevated_button_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  Widget myRow({required String title, required name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white60),
        ),
      ],
    );
  }

  List<String> arrsub = ["Deutsche Bundesbank", "Lützowplatz Rhein"];
  List<String> arrtitle = ["**** **** 2105", "**** **** 1545"];

  bool changed = false;
  bool changed1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          builder: (context) => Delivery(),
                        ));
                  },
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Choose a Payment Method",
                  style: TextStyle(color: Colors.white60),
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changed = true;
                      changed1 = false;
                    });
                  },
                  child: Container(
                    height: 100.h,
                    width: 378.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: changed
                          ? Color.fromRGBO(186, 94, 239, 1)
                          : Colors.black38,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "Visa",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "**** **** 2105",
                                style: TextStyle(fontSize: 14),
                              ),
                              Spacer(),
                              Text(
                                "08/29",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changed1 = true;
                      changed = false;
                    });
                  },
                  child: Container(
                    height: 100.h,
                    width: 378.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: changed1
                          ? Color.fromRGBO(186, 94, 239, 1)
                          : Colors.black38,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "Paypal",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "**** **** 2105",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Text(
                      "My Payment Methods",
                      style: TextStyle(color: Colors.white60, fontSize: 18),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 33.h,
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => View_all_contest(),));
                        },
                        child: Text(
                          "Add Address",
                          style: TextStyle(fontSize: 12),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        // onTap: (){Navigator.push(context, MaterialPageRoute(
                        //   builder: (context)=> ,));},
                        child: Container(
                          padding: EdgeInsets.only(left: 20.w, right: 10.w),
                          margin: EdgeInsets.only(bottom: 15.h),
                          width: 365.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Image.asset("assets/images/home.png"),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    arrtitle[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    arrsub[index],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Checkout",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60),
                ),
                SizedBox(
                  height: 20.h,
                ),
                myRow(title: "Total", name: "\$20.14"),
                SizedBox(
                  height: 15.h,
                ),
                myRow(title: "Shipping", name: "\$2.99"),
                SizedBox(
                  height: 15.h,
                ),
                myRow(title: "Subtotal ", name: "\$23.21"),
                SizedBox(
                  height: 80.h,
                ),
                CustomElevatedButton(onPressed: () {}, label: "Buy"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
