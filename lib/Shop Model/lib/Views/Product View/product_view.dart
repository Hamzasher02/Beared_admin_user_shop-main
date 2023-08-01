import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_container2.dart';
import '../../Components/custom_text_button.dart';
import '../Cart View/cart_view.dart';
import 'Providers/product_provider.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                    height: 420.h,
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.comb,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  top: 60,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 20,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(AppImages.smallComb),
                      SizedBox(
                        width: 15.w,
                      ),
                      Image.asset(AppImages.smallComb),
                      SizedBox(
                        width: 15.w,
                      ),
                      Image.asset(AppImages.smallComb),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  const Text24(text: 'Comb'),
                  SizedBox(height: 5.h),
                  const Text16Regular(text: '41 Items Sold'),
                  SizedBox(height: 20.h),
                  Text18Regular(
                      text: 'Description', textColor: AppColors.grayText2),
                  SizedBox(height: 15.h),
                  const Text16Regular(
                      text:
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text18Regular(
                          text: 'Reviews', textColor: AppColors.grayText2),
                      CustomTextButton(
                        height: 35.h,
                        width: 85.w,
                        title: TKeys.View_All.translate(context),
                        // 'View All',
                        onTap: () {},
                        color: AppColors.buttonColor,
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomContainer2(
                    h: 140.h,
                    w: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text16White(text: 'M***k'),
                              Container(
                                height: 27.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.blackText,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text14(
                                        text: '3.5',
                                        textColor: AppColors.blackText)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text14(
                              text: '2 days ago',
                              textColor: AppColors.grayText),
                          SizedBox(height: 5.h),
                          Text14(
                              text:
                                  'Dummy text is also used to demonstrate the appearance of used to dummy text.',
                              textColor: AppColors.grayText2),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomContainer2(
                    h: 140.h,
                    w: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text16White(text: 'M***k'),
                              Container(
                                height: 27.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.blackText,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text12(
                                        text: '5',
                                        textColor: AppColors.blackText)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text14(
                              text: '2 days ago',
                              textColor: AppColors.grayText),
                          SizedBox(height: 5.h),
                          Text14(
                              text:
                                  'Dummy text is also used to demonstrate the appearance of used to dummy text.',
                              textColor: AppColors.grayText2),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.dialogBoxColor,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text14(
                        text: TKeys.Price.translate(context),
                        // 'Price',
                        textColor: AppColors.grayText),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text20(text: '2.47')
                  ],
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: AppColors.grayText2)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  // You can use both  context.read<ProductProvider>().decrementX(); &
                                  // Provider.of<ProductProvider>(context, listen: false).decrementX()

                                  // Provider.of<ProductProvider>(context, listen: false).decrementX();
                                  context.read<ProductProvider>().decrementX();
                                },
                                child: Container(
                                  height: 22.h,
                                  width: 22.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Text18Regular(
                                    text: '-',
                                    textColor: AppColors.blackText,
                                  )),
                                ),
                              ),
                              Consumer<ProductProvider>(
                                builder: (context, productProvider, child) {
                                  return Text14(
                                      text: '${productProvider.x}',
                                      textColor: AppColors.primaryText);
                                },
                              ),
                              InkWell(
                                onTap: () {
                                  Provider.of<ProductProvider>(context,
                                          listen: false)
                                      .incrementX();
                                },
                                child: Container(
                                    height: 22.h,
                                    width: 22.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Center(
                                        child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CustomTextButton(
                          color: AppColors.buttonColor,
                          title: 'Add to Cart',
                          onTap: () {
                            Get.to(() => const CartView());
                          },
                          height: 50.h,
                          width: 150.w)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
