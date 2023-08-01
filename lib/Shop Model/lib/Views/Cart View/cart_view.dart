import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../../../Admin Module/lib/widgets/button.dart';
import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/reusable_row.dart';
import '../Delivery View/delivery_view.dart';
import '../Product View/Providers/product_provider.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 13,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: 'Shopping Cart',
                  )),
              SizedBox(height: 5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: 'Products you added to Cart',
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 350.h,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CustomContainer2(
                          h: 100.h,
                          w: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    child: Row(
                                  children: [
                                    Image.asset(AppImages.smallComb),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text18Regular(
                                            text: 'Comb',
                                            textColor: AppColors.primaryText),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text16White(text: '2.47')
                                      ],
                                    ),
                                  ],
                                )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: AppColors.whiteColor,
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Container(
                                      height: 40.h,
                                      width: 105.w,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: AppColors.grayText2)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Provider.of<ProductProvider>(
                                                        context,
                                                        listen: false)
                                                    .decrementX();
                                              },
                                              child: Container(
                                                height: 22.h,
                                                width: 22.w,
                                                decoration: BoxDecoration(
                                                    color: AppColors.whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                    child: Text18Regular(
                                                  text: '-',
                                                  textColor:
                                                      AppColors.blackText,
                                                )),
                                              ),
                                            ),
                                            Consumer<ProductProvider>(
                                              builder: (context,
                                                  productProvider, child) {
                                                return Text14(
                                                    text:
                                                        '${productProvider.x}',
                                                    textColor:
                                                        AppColors.primaryText);
                                              },
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Provider.of<ProductProvider>(
                                                        context,
                                                        listen: false)
                                                    .incrementX();
                                              },
                                              child: Container(
                                                  height: 22.h,
                                                  width: 22.w,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColors.whiteColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 15,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text18Regular(text: 'Checkout', textColor: AppColors.grayText2),
              SizedBox(
                height: 20.h,
              ),
              const ReusableRow(
                  label: 'Total Items',
                  title: '07',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(
                height: 15.h,
              ),
              const ReusableRow(
                  label: 'Total',
                  title: '2014',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(
                height: 15.h,
              ),
              const ReusableRow(
                  label: 'Shipping',
                  title: '2.99',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(
                height: 15.h,
              ),
              const ReusableRow(
                  label: 'Subtotal ',
                  title: '23.21',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center),
              SizedBox(
                height: 80.h,
              ),
              CustomButton(
                  title: 'Proceed to Buy',
                  onPress: () {
                    Get.to(() => const DeliveryView());
                  }),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
