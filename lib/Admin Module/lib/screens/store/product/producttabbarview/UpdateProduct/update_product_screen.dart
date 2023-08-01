import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../Providers/ProductProvider/get_active_product_provider.dart';
import '../../../../../Providers/ProductProvider/update_product_provider.dart';
import '../../../../../utils/colors.dart';

class UpdateProduct extends StatefulWidget {
  final String id;
  final String name;
  final String price;
  final String stock;

  UpdateProduct({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
  }) : super(key: key);

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final stockController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name;
    priceController.text = widget.price;
    stockController.text = widget.stock;
  }

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 68.h),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: iconwhite,
                    size: 20.sp,
                  ),
                ),
                SizedBox(height: 36.h),
                Text(
                  "Update Product",
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: textwhite.withOpacity(.87),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Nunito",
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Add Info to Upload Your Product",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: textwhite.withOpacity(.38),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Nunito",
                  ),
                ),
                SizedBox(height: 40.h),
                buildTextInput(
                  controller: nameController,
                  hintText: "Product Title",
                ),
                SizedBox(height: 20.h),
                buildTextInput(
                  controller: priceController,
                  hintText: "Price",
                ),
                SizedBox(height: 25.h),
                buildTextInput(
                  controller: stockController,
                  hintText: "Stock",
                ),
                SizedBox(height: 40.h),
                Consumer<AdminActiveProductProvider>(
                  builder: (context,activeProvider,child){
                    return Consumer<UpdateProductProvider>(
                      builder: (context, provider, child) {
                        return InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              provider.updateProduct(
                                id: widget.id,
                                context: context,
                                name: nameController.text,
                                price: priceController.text,
                                stock: stockController.text,
                              ).then((value){
                                activeProvider.getActiveProduct();
                              });
                            }
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
                                "Update",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: textwhite.withOpacity(.87),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Nunito",
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
          ),
        ),
      ),
    );
  }

  Widget buildTextInput({
    required TextEditingController controller,
    required String hintText,
  }) {
    return Container(
      height: 60.h,
      width: 378.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: containerbg,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 25.w),
        child: TextFormField(
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontSize: 16.sp,
              color: textwhite.withOpacity(.38),
            ),
          ),
          style: TextStyle(
            color: textwhite.withOpacity(.38),
            fontFamily: 'Montserrat',
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}

