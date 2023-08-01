import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/UpdateProduct/update_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../Providers/ProductProvider/de_activate_product_provider.dart';
import '../../../../../Providers/ProductProvider/delete_product_provider.dart';
import '../../../../../Providers/ProductProvider/outOf_stock_provider.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/images.dart';
import '../../../../../widgets/updatepopup.dart';

class OutOfStock extends StatefulWidget{
   const OutOfStock({super.key,});

  @override
  State<OutOfStock> createState() => _OutOfStockState();
}
class _OutOfStockState extends State<OutOfStock> {

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AdminOutOfStockProvider>(context, listen: false).getOutOfStock();
    super.initState();
  }
  bool loading = false;
  @override
  Widget build(BuildContext context) {

   return Consumer<AdminOutOfStockProvider>(
     builder: (context,provider,child){
       if (loading == false) {
         provider.getOutOfStock().then((value) {
           return loading = true;
         });
       }
       return provider.loading
           ? const Center(
           child: CircularProgressIndicator( color: Colors.blue,),
          )
           :SizedBox(
           height: 400.h,
         child: ListView.builder(
           itemCount: provider.outOfStockModel[0].products.length,
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
                       Image.asset(productpic,height: 110, width: 80,),
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
                             provider.outOfStockModel[0].products[index].name.toString(),
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
                             provider.outOfStockModel[0].products[index].price.toString(),
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
                             "${provider.outOfStockModel[0].products[index].stock.toString()} Stock",
                             style: TextStyle(
                                 fontSize: 14.sp,
                                 color: textwhite.withOpacity(.60),
                                 fontWeight: FontWeight.w500,
                                 fontFamily: "Nunito"),
                           ),
                         ],
                       ),
                       const Spacer(),
                       PopupMenuButton(
                         // add icon, by default "3 dot" icon
                           icon: Icon(
                             Icons.more_vert_rounded,
                             color: iconwhite,
                           ),
                           color: containerbg,
                           itemBuilder: (context) {
                             return [
                               PopupMenuItem<int>(
                                 value: 0,
                                 child: InkWell(
                                   onTap: (){
                                   },
                                   child: InkWell(
                                     onTap: (){
                                       Get.to( UpdateProduct(
                                         id: provider.outOfStockModel[0].products[index].id.toString(),
                                         name: provider.outOfStockModel[0].products[index].name.toString(),
                                         price: provider.outOfStockModel[0].products[index].price.toString(),
                                         stock: provider.outOfStockModel[0].products[index].stock.toString(),
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
                               ),
                               PopupMenuItem<int>(
                                 value: 1,
                                 child: Consumer<DeActivateProductProvider>(
                                   builder: (context,deactivateProvider,child){
                                     return InkWell(
                                       onTap: () {
                                         deactivateProvider.deActivateProduct(provider
                                             .outOfStockModel[0].products[index].id.toString()).then((value) {
                                           provider.getOutOfStock();
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
                                     updateAlertBox(context,
                                       provider.outOfStockModel[0]
                                           .products[index].id.toString(),
                                       provider.outOfStockModel[0]
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
                                   builder: (context,deleteProvider,child){
                                     return InkWell(
                                       onTap: () {
                                         deleteProvider.deleteActiveProduct(provider.outOfStockModel[0]
                                             .products[index].id.toString()).then((value) {
                                           provider.getOutOfStock();
                                         });
                                       },
                                       child: Text(
                                         "Delete",
                                         style: TextStyle(
                                             fontSize: 16.sp,
                                             color: textwhite.withOpacity(.87),
                                             fontWeight: FontWeight.w500,
                                             fontFamily: "Nunito"),
                                       ),
                                     );
                                   },
                                 ),
                               ),
                             ];
                           },
                           ),
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