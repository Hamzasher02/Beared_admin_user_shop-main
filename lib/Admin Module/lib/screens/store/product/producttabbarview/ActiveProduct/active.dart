import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/UpdateProduct/update_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../Providers/ProductProvider/de_activate_product_provider.dart';
import '../../../../../Providers/ProductProvider/delete_product_provider.dart';
import '../../../../../Providers/ProductProvider/get_active_product_provider.dart';
import '../../../../../utils/appurls.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/images.dart';
import '../../../../../widgets/updatepopup.dart';

class Active extends StatefulWidget {
  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Provider.of<AdminActiveProductProvider>(context, listen: false)
        .getActiveProduct();
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<AdminActiveProductProvider>(
      builder: (context, activeProvider, child) {
        if (loading == false) {
          activeProvider.getActiveProduct().then((value) {
            return loading = true;
          });
        }
        return activeProvider.loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )
            : SizedBox(
                height: 400.h,
                child: ListView.builder(
                  itemCount:
                      activeProvider.activeProductModel[0].products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Container(
                        height: 125.h,
                        width: 378.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: containerbg,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: activeProvider.activeProductModel[0].products[index].photos.isNotEmpty?
                                Image.network(
                                  AppUrl.imageUrl +
                                      activeProvider.activeProductModel[0]
                                          .products[index].photos[0]
                                          .toString(),
                                  fit: BoxFit.cover,
                                  height: 110,
                                  width: 80,
                                ):Image.asset(productpic, height: 110, width: 80,),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    activeProvider.activeProductModel[0]
                                        .products[index].name
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    activeProvider.activeProductModel[0]
                                        .products[index].price
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: textwhite.withOpacity(.87),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "${activeProvider.activeProductModel[0].products[index].stock.toString()} in Stock",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: textwhite.withOpacity(.60),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Nunito"),
                                  ),
                                ],
                              ),
                              Spacer(),
                              PopupMenuButton(
                                icon: const Icon(
                                  Icons.more_vert_rounded,
                                  color: iconwhite,
                                ),
                                color: background,
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem<int>(
                                      value: 0,
                                      child: InkWell(
                                        onTap: (){
                                          Get.to( UpdateProduct(
                                            id: activeProvider.activeProductModel[0].products[index].id.toString(),
                                            name: activeProvider.activeProductModel[0].products[index].name.toString(),
                                            price: activeProvider.activeProductModel[0].products[index].price.toString(),
                                            stock: activeProvider.activeProductModel[0].products[index].stock.toString(),
                                          ));
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color:
                                                  textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 1,
                                      child: Consumer<DeActivateProductProvider>(
                                        builder: (context,deactivateProvider,child){
                                          return InkWell(
                                            onTap: () {
                                              deactivateProvider.deActivateProduct(activeProvider
                                                  .activeProductModel[0].products[index].id.toString()).then((value) {
                                                activeProvider.getActiveProduct();
                                              });
                                            },
                                            child: Text(
                                              "Inactive",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color:
                                                  textwhite.withOpacity(.87),
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Nunito"),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 2,
                                      child: InkWell(
                                        onTap: (){

                                          print("id..${activeProvider.activeProductModel[0].products[index].id.toString()}");
                                          updateAlertBox(context,
                                            activeProvider.activeProductModel[0]
                                                .products[index].id.toString(),
                                            activeProvider.activeProductModel[0]
                                              .products[index].stock.toString(),
                                          );
                                        },
                                        child: Text(
                                          "Edit Stock",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: textwhite.withOpacity(.87),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Nunito"),
                                        ),
                                      ),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 2,
                                      child: Consumer<ActiveProductDeleteProvider>(
                                        builder:
                                            (context, deleteProvider, child) {
                                          return InkWell(
                                            onTap: () {
                                              deleteProvider
                                                  .deleteActiveProduct(
                                                      activeProvider
                                                          .activeProductModel[0]
                                                          .products[index]
                                                          .id
                                                          .toString())
                                                  .then((value) {
                                                activeProvider
                                                    .getActiveProduct();
                                              });
                                            },
                                            child: Text(
                                              "Delete",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: textwhite
                                                      .withOpacity(.87),
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Nunito"),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ];
                                },
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
}
