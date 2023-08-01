import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Providers/ProductProvider/get_active_product_provider.dart';
import '../Providers/ProductProvider/outOf_stock_provider.dart';
import '../Providers/ProductProvider/update_stock_provider.dart';
import '../utils/colors.dart';

void updateAlertBox(BuildContext context, String id, String stock) {
  TextEditingController stockController = TextEditingController(text: stock);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        backgroundColor: containerbg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Container(
          height: 290.h,
          width: 378.w,
          padding: EdgeInsets.all(25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Update Stock",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: textwhite.withOpacity(.87),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito",
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Available $stock in stock",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: textwhite.withOpacity(.60),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito",
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                height: 50.h,
                width: 328.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: background,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, bottom: 5.h),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: stockController,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: textwhite.withOpacity(.60),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito",
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: stock,
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        color: textwhite.withOpacity(.60),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50.h,
                      width: 125.w,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.sp, color: textwhite.withOpacity(.60)),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: textwhite.withOpacity(.87),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Consumer<AdminActiveProductProvider>(
                    builder: (context, provider1, child) {
                      return Consumer<UpdateStockProvider>(
                        builder: (context, provider, child) {
                          return InkWell(
                            onTap: () {
                              provider.putUpdateStock(
                                id.toString(),
                                stockController.text.trim().toString(),
                              ).then((value) {
                                provider1.getActiveProduct();
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                              height: 50.h,
                              width: 125.w,
                              decoration: BoxDecoration(
                                color: btnbgpurple,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Center(
                                child: Text(
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
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
