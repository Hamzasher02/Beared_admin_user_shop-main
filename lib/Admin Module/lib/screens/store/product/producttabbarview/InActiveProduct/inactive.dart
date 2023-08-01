import 'package:beared_friend/Admin%20Module/lib/screens/store/product/producttabbarview/UpdateProduct/update_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../../Providers/ProductProvider/activated_product_provider.dart';
import '../../../../../Providers/ProductProvider/delete_product_provider.dart';
import '../../../../../Providers/ProductProvider/in_active_product_provider.dart';
import '../../../../../utils/appurls.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/images.dart';
import '../../../../../widgets/updatepopup.dart';

class InActive extends StatefulWidget{
  @override
  State<InActive> createState() => _InActiveState();
}

class _InActiveState extends State<InActive> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<InActiveProductProvider>(context, listen: false).getInActiveProduct();
    super.initState();
  }
  bool loading = false;
  @override
  Widget build(BuildContext context) {
   return Consumer<InActiveProductProvider>(
     builder: (context, provider,child){

       if (loading == false) {
         provider.getInActiveProduct().then((value) {
           return loading = true;
         });
       }
       return provider.loading
           ? const Center(
         child: CircularProgressIndicator( color: Colors.blue,),
       )
           : ListView.builder(
         itemCount: provider.inActiveProductsModel[0].products.length,
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
                       child: provider.inActiveProductsModel[0].products[index].photos.isNotEmpty?
                       Image.network(
                         AppUrl.imageUrl +
                         provider.inActiveProductsModel[0].products[index].photos[0].toString(),
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
                           provider.inActiveProductsModel[0].products[index].name.toString(),
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
                           provider.inActiveProductsModel[0].products[index].name.toString(),
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
                           "${provider.inActiveProductsModel[0].products[index].stock.toString()} in Stock",
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
                                 Get.to( UpdateProduct(
                                   id: provider.inActiveProductsModel[0].products[index].id.toString(),
                                   name: provider.inActiveProductsModel[0].products[index].name.toString(),
                                   price: provider.inActiveProductsModel[0].products[index].price.toString(),
                                   stock: provider.inActiveProductsModel[0].products[index].stock.toString(),
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
                             child: Consumer<ActivatedProductProvider>(
                               builder: (context,activateProvider,child){
                                 return InkWell(
                                   onTap: () {
                                     activateProvider.activateProduct(provider
                                         .inActiveProductsModel[0].products[index].id.toString()).then((value) {
                                       provider.getInActiveProduct();
                                     });
                                   },
                                   child: Text(
                                     "Active",
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
                                     provider.inActiveProductsModel[0]
                                         .products[index].id.toString(),
                                   provider.inActiveProductsModel[0]
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
                             child:  Consumer<ActiveProductDeleteProvider>(
                               builder:
                                   (context, deleteProvider, child) {
                                 return InkWell(
                                   onTap: () {
                                     deleteProvider
                                         .deleteActiveProduct(
                                         provider.inActiveProductsModel[0]
                                             .products[index].id.toString())
                                         .then((value) {
                                           provider.getInActiveProduct();
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
       );
     },
   );
  }
}