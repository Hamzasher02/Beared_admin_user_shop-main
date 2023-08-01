import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Images/app_images.dart';
import '../../App Constants/App Text/text.dart';
import '../../Components/custom_text_field.dart';
import '../../Components/my_card.dart';
import '../../Components/small_button.dart';
import '../Product View/product_view.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({Key? key}) : super(key: key);

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  final searchController = TextEditingController();

  final searchFocusNode = FocusNode();

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
              SizedBox(height: 30.h),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text24(
                    text: TKeys.Wishlist.translate(context),
                    // 'Wishlist',
                  )),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text16Medium(
                  text: TKeys.Your_Favorite_Product_Barbers.translate(context),
                  // 'Your Favorite Products',
                ),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .7,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h),
                  itemCount: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
