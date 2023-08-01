
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/ActiveProduct/active.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/DraftProduct/draft.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/InActiveProduct/inactive.dart';
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/OutOfStockProduct/outofstock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Providers/ProductProvider/get_active_product_provider.dart';
import '../../../Providers/ProductProvider/outOf_stock_provider.dart';
import '../../../utils/colors.dart';
import 'producttabbarview/AddNewProduct/addproduct.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  TextEditingController search = TextEditingController();
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Provider.of<AdminActiveProductProvider>(context, listen: false)
        .getActiveProduct();
    Provider.of<AdminOutOfStockProvider>(context, listen: false)
        .getOutOfStock();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Stack(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 68.h,
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: iconwhite,
                          size: 20.sp,
                        )),
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      "Products",
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
                      "Your Products",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: textwhite.withOpacity(.38),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Nunito"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: TabBar(
                          labelColor: textwhite,
                          unselectedLabelColor: textwhite.withOpacity(.60),
                          indicatorColor: textwhite.withOpacity(.87),
                          tabs: [
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.h),
                              child: Container(
                                child: Text(
                                  "Active",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Container(
                                child: Text(
                                  "Draft",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Container(
                                child: Text(
                                  "Outofstock",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.h),
                              child: Container(
                                child: Text(
                                  "Inactive",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Nunito"),
                                ),
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 60.h,
                      width: 378.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: containerbg),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: search,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: textwhite.withOpacity(.38),
                            ),
                            hintText: "Search",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.38),
                            ),
                          ),
                          style: TextStyle(
                              color: textwhite.withOpacity(.38),
                              fontFamily: 'Montserrat',
                              fontSize: 14.sp),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Email";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sort By",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: textwhite.withOpacity(.60),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Nunito"),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          children: [

                            Container(
                              height: 5.h,
                              child: Icon(
                                Icons.arrow_drop_up,
                                color: textwhite.withOpacity(.87),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            Icon(
                              Icons.arrow_drop_down,
                              color: textwhite.withOpacity(.38),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 84.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.r),
                              color: btnbgpurple),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                size: 20.sp,
                                color: textwhite.withOpacity(.87),
                              ),
                              SizedBox(
                          width: 10.w,
                        ),
                              Text(
                                "Date",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: textwhite.withOpacity(.87),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Nunito"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          width: 60.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.r),
                              border: Border.all(width: 1.sp,color:textwhite.withOpacity(.38),)
                              ),
                          child: Center(
                            child: Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: textwhite.withOpacity(.38),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Nunito"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 450.h,
                      child: TabBarView(
                        children: [
                          Active(),
                          Draft(),
                          OutOfStock(),
                          InActive(),
                        ],
                      ),
                    ),

                  ],

                ),
                 Padding(
                  padding:  EdgeInsets.only(top: 814.h,left: 318.w),
                  child: InkWell(
                      onTap: () {
                        Get.to(()=>AddProduct());
                      },
                       child: Container(
                         height: 60.h,
                         width: 60.h,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40.r),
                           color: btnbgpurple
                         ),
                         child: Center(
                           child: Icon(Icons.add,color: iconwhite,),
                         ),
                       ),
                     ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
