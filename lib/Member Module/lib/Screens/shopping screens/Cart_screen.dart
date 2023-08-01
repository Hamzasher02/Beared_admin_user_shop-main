
import 'package:beared_friend/Admin%20Module/lib/screens/store/product/products.dart';
import 'package:beared_friend/Member%20Module/lib/Widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'delivery_screen.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget myRow({required String title, required name }){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
        Text(name,style: TextStyle(color: Colors.white60),),
      ],
    );
  }
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    if (_counter == 0) {
      return; // do nothing if count is already 0
    }
    setState(() {
      _counter--;
    });
  }
  List<String> arrtitle= ["Comb","Spray","Cream"];
  List<String> arrimg= ["assets/images/Combb.png","assets/images/Spraay.png","assets/images/Cream.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:EdgeInsets.all(18.0),
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              InkWell(child: Container( height: 40.h,width: 20.w,decoration: BoxDecoration(color: Colors.transparent),
                  child: Image.asset("assets/images/arrow head.png")),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Products(),));
              },),
            SizedBox(height: 35.h,),
            Text("Shopping Cart", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text("Products you added to Cart",style: TextStyle(color: Colors.white60),),
                    SizedBox(height: 30.h,),
                    ListView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            // onTap: (){Navigator.push(context, MaterialPageRoute(
                            //   builder: (context)=> ,));},
                            child: Container(
                              padding: EdgeInsets.only(left: 20.w,right: 10.w),
                              margin: EdgeInsets.only(bottom: 15.h),
                              width: 365.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child:Column(crossAxisAlignment: CrossAxisAlignment.end,
                                children: [ SizedBox(height: 6.h),
                                  Icon(Icons.close,color: Colors.white,size: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(arrimg[index],width: 60.w,height: 60.h),
                                      SizedBox(width: 25.w,),
                                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(arrtitle[index],style: TextStyle(color:Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                                          Text("\$2.47",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                      SizedBox(width: 100.w,),
                                      Container(height: 40.h,width: 106.w,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.white),
                                            borderRadius:BorderRadius.circular(15.r) ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(9.0.sp),
                                          child: Row(
                                            children: [
                                              InkWell( onTap: (){_decrementCounter();},
                                                child: Container(height: 20.h,width: 20.w,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5.r)),
                                                  child: Icon(Icons.remove,color: Colors.black,size: 10,),
                                                ),
                                              ),
                                              SizedBox(width: 13.w,),
                                              Text("$_counter",style: TextStyle(color: Colors.white,fontSize: 14),),
                                              SizedBox(width: 13.w,),
                                              InkWell( onTap: (){ _incrementCounter();},
                                                child: Container(height: 20.h,width: 20.w,
                                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5.r)),
                                                  child: Icon(Icons.add,color: Colors.black,size: 10,),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ), ),
                          );}
                    ),

                    SizedBox(height: 30.h,),
                    Text("Checkout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white60),),
                    SizedBox(height: 20.h,),
                    myRow(title: "Total Items", name: "07"),
                    SizedBox(height: 15.h,),
                    myRow(title: "Total", name: "\$20.14"),
                    SizedBox(height: 15.h,),
                    myRow(title: "Shipping", name: "\$2.99"),
                    SizedBox(height: 15.h,),
                    myRow(title: "Subtotal ", name: "\$23.21"),
                    SizedBox(height: 30.h,),

                   CustomElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Delivery(),));
                   }, label: "Continue"),
      ],
    ),
            ),
    ),
    ),
    );
  }
}
