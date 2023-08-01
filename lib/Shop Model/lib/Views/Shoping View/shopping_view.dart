import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_text_field.dart';
import '../../Components/icon_button.dart';
import '../../Components/my_card.dart';
import '../../Components/small_button.dart';
import '../Product View/product_view.dart';

class ShoppingView extends StatefulWidget {
  const ShoppingView({Key? key}) : super(key: key);

  @override
  State<ShoppingView> createState() => _ShoppingViewState();
}

class _ShoppingViewState extends State<ShoppingView> {
  final searchController = TextEditingController();

  final searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: TKeys.Shop.translate(context),
                    //  'Shop',
                  )),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: TKeys.Explore_Prducts_Merchandise.translate(context),
                  // 'Explore Products & Merchandise',
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: CustomTextField(
                      controller: searchController,
                      focusNode: searchFocusNode,
                      onFieldSubmittedValue: (newValue) {},
                      keyBoardType: TextInputType.text,
                      obscureText: false,
                      hint: TKeys.Search.translate(context),
                      //  'Search',
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: MyIconButton(
                      height: 60.h,
                      width: 60.w,
                      onTap: () {},
                      iconColor: AppColors.whiteColor,
                      buttonColor: AppColors.buttonColor,
                      icon: Icons.shopping_cart_outlined,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30.h),
              Text18Regular(
                  text: TKeys.Trending.translate(context),
                  // "Trending",
                  textColor: AppColors.grayText2),
              SizedBox(height: 15.h),
              SizedBox(
                height: 500.h,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return MyCard(
                      onTap: () {
                        Get.to(() => const ProductView());
                      },
                      image: AppImages.comb,
                      title: 'Comb',
                      details: 'The Set of Black Comb and...',
                      price: "\$1.47",
                    );
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Text18Regular(text: 'Categories', textColor: AppColors.grayText2),
              SizedBox(height: 20.h),
              SizedBox(
                height: 130.h,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          Container(
                            height: 85.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(AppImages.dummy))),
                          ),
                          SizedBox(height: 10.h),
                          Text14(
                            text: 'Comb',
                            textColor: AppColors.primaryText,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
