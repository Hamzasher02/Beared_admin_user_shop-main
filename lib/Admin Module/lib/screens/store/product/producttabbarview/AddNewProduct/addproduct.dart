import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../Providers/ProductProvider/add_product_provider.dart';
import '../../../../../Providers/ProductProvider/get_active_product_provider.dart';
import '../../../../../utils/colors.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final deliveryController = TextEditingController();
  final freeDeliveryController = TextEditingController();
  final stockController = TextEditingController();
  final categoryController = TextEditingController();
  bool _checkbox = false;
  bool loading = false;
  @override
  void dispose() {
    nameController.dispose();
    titleController.dispose();
    priceController.dispose();
    deliveryController.dispose();
    freeDeliveryController.dispose();
    stockController.dispose();
    categoryController.dispose();
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
                  "Add Product",
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
                  "Add Info to Upload Your Product",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: textwhite.withOpacity(.38),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Nunito"),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Consumer<PostAddProductProvider>(
                  builder: (context,imageProvider,child){
                  return  Container(
                    height: 200.h,
                    width: 378.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: containerbg),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Images",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: textwhite.withOpacity(.38),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Nunito"),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          GestureDetector(
                            onTap: (){
                              imageProvider.getImageGallery();
                            },
                            child:imageProvider.pickedFiles.isEmpty
                                ? Container(
                                width: double.infinity,
                                height: 135.h,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.2),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child:  Center(
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Upload Product Image",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: textwhite.withOpacity(.38),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Nunito"),
                                      ),
                                      Icon(Icons.add,size: 30.sp,color: textwhite.withOpacity(.38),)
                                    ],
                                  ),
                                )
                            )
                                : Container(
                                width: double.infinity,
                                height: 135.h,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.2),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: GridView.builder(
                                        itemCount: imageProvider.pickedFiles.length,
                                        gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 10,
                                           mainAxisSpacing: 10,
                                        ),
                                        itemBuilder: (BuildContext context, int index) {
                                          return GestureDetector(
                                            onDoubleTap: () {
                                              Get.defaultDialog(
                                                  title: "image",
                                                  content: const Text(""),
                                                  actions: [
                                                    SizedBox(
                                                      height: Get.height * 0.3,
                                                      child: Image.file(
                                                          File(imageProvider.pickedFiles[index].path),
                                                          fit: BoxFit.contain),
                                                    ),
                                                  ]);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5,color: Colors.grey),
                                              ),
                                              child: Image.file(
                                                  File(imageProvider.pickedFiles[index].path),
                                                  fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                )
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Product Title",
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h
                ),
                Container(
                  height: 150.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Product Description",
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
                ),
                SizedBox(
                  height: 20.h
                ),
                Container(
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
                      controller: priceController,
                      decoration: InputDecoration(
                        hintText: "Price",
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h
                ),
                Container(
                  height: 60.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: deliveryController,
                      decoration: InputDecoration(
                        hintText: "Delivery Charges",
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
                ),
                SizedBox(
                  height: 15.h
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox,
                      activeColor: btnbgpurple,
                      side: const BorderSide(color: btnbgpurple),
                      onChanged: (value) {
                        setState(() {
                          _checkbox = value!;
                        });
                      },
                    ),
                    Text(
                      "Free Delivery",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: textwhite.withOpacity(.87),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h
                ),
                Container(
                  height: 60.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: stockController,
                      decoration: InputDecoration(
                        hintText: "Stock",
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h
                ),
                Container(
                  height: 60.h,
                  width: 378.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: containerbg),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: categoryController,
                      decoration: InputDecoration(
                        hintText: "Category",
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h
                ),
                Consumer<AdminActiveProductProvider>(
                 builder: (context,activeProduct,child){
                   return Consumer<PostAddProductProvider>(
                     builder: (context, provider,child){
                       return InkWell(
                         onTap: (){

                           if (_formKey.currentState!.validate()) {
                             provider.postAddProduct(
                               delivery: _checkbox,
                               name: nameController.text.toString(),
                               description: titleController.text.toString(),
                               price: priceController.text.toString(),
                               deliveryCharges: deliveryController.text.toString(),
                               stock: stockController.text.toString(),
                               category: categoryController.text.toString(),
                             ).then((value){
                               activeProduct.getActiveProduct();
                               Navigator.pop(context);
                             });
                           }
                         },
                         child: Container(
                           height: 60.h,
                           width: 378.w,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.r),
                               color: btnbgpurple),
                           child: Center(
                             child: Text(
                               "Add Product",
                               style: TextStyle(
                                   fontSize: 18.sp,
                                   color: textwhite.withOpacity(.87),
                                   fontWeight: FontWeight.w600,
                                   fontFamily: "Nunito"),
                             ),
                           ),
                         ),
                       );
                     },
                   );
                 },
                ),
                // Consumer<AdminActiveProductProvider>(
                //   builder: (context, activeProduct, child) {
                //     return Consumer<PostAddProductProvider>(
                //       builder: (context, provider, child) {
                //         bool isLoading = false; // Add a flag to track loading state
                //
                //         return InkWell(
                //           onTap: () {
                //             if (_formKey.currentState!.validate()) {
                //               setState(() {
                //                 isLoading = true; // Set isLoading to true when the button is tapped
                //               });
                //
                //               provider.postAddProduct(
                //                 delivery: _checkbox,
                //                 name: nameController.text.toString(),
                //                 description: titleController.text.toString(),
                //                 price: priceController.text.toString(),
                //                 deliveryCharges: deliveryController.text.toString(),
                //                 stock: stockController.text.toString(),
                //                 category: categoryController.text.toString(),
                //               ).then((value) {
                //                 activeProduct.getActiveProduct();
                //                 Navigator.pop(context);
                //               }).catchError((error) {
                //                 // Handle error if necessary
                //               }).whenComplete(() {
                //                 setState(() {
                //                   isLoading = false; // Set isLoading back to false when the operation is completed
                //                 });
                //               });
                //             }
                //           },
                //           child: Container(
                //             height: 60.h,
                //             width: 378.w,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20.r),
                //               color: btnbgpurple,
                //             ),
                //             child: Center(
                //               child: isLoading
                //                   ? CircularProgressIndicator() // Show CircularProgressIndicator when isLoading is true
                //                   : Text(
                //                 "Add Product",
                //                 style: TextStyle(
                //                   fontSize: 18.sp,
                //                   color: textwhite.withOpacity(.87),
                //                   fontWeight: FontWeight.w600,
                //                   fontFamily: "Nunito",
                //                 ),
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     );
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}