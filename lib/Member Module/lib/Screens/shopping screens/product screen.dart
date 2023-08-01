
import 'package:beared_friend/Member%20Module/lib/Screens/HomeScreen/Shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../BarbarShopScreen/reviews_screen.dart';
import 'Cart_screen.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<String> arrimg1 = [
    'assets/images/pic.png',
    'assets/images/pic1.png',
    'assets/images/pic2.png'
  ];
  bool icon = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black38,
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.sp, vertical: 22.sp),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(color: Colors.white38, fontSize: 14),
                  ),
                  Text(
                    "\$2.47",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                width: 55.w,
              ),
              Container(
                height: 40.h,
                width: 106.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Padding(
                  padding: EdgeInsets.all(9.0.sp),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _decrementCounter();
                        },
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      Text(
                        "$_counter",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      InkWell(
                        onTap: () {
                          _incrementCounter();
                        },
                        child: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              SizedBox(
                height: 50.h,
                width: 151.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cart(),
                        ));
                  },
                  child: Text("Add to Cart"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(
                        186, 94, 239, 1), //background color of button
                    //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(15)),
                  ), // Set the style property
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                    child: Image.asset(
                  'assets/images/product.png',
                )),
                Positioned(
                    top: 40.h,
                    left: 20.w,
                    child: InkWell(
                      child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Image.asset("assets/images/arrow head.png")),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => shopping(),
                            ));
                      },
                    )),
                Positioned(
                  top: 40.h,
                  right: 70.w,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(186, 94, 239, 1)),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.favorite_border, size: 17),
                        color: icon ? Colors.red : Colors.white,
                        onPressed: () {
                          setState(() {
                            icon = !icon;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40.h,
                  right: 20.w,
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(186, 94, 239, 1)),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart_outlined, size: 17),
                        color: icon ? Colors.red : Colors.white,
                        onPressed: () {
                          setState(() {
                            icon = !icon;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ]),
              Container(
                padding: EdgeInsets.all(17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 9,
                          childAspectRatio: 1),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.transparent,
                          elevation: 200,
                          child: Column(
                            children: [
                              Image.asset(
                                arrimg1[index],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Comb",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "41 Items Sold",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.38),
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing"
                      "\nelit. Aenean commodo ligula eget dolor. Aenean\nmassa.",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.38),
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(color: Colors.white60, fontSize: 18),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          height: 19.h,
                          width: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(Icons.star, color: Colors.black, size: 13),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 33.h,
                          width: 90.w,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReviewsScreen(),
                                  ));
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(186, 94, 239, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, int index) => Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            alignment: Alignment.center,
                            height: 138,
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text(
                                    "B****g",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 25.h,
                                    width: 64.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.black, size: 15),
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("2 days ago"),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                      "Dummy text is also used to demonstrate the appearance of used to dummy text."),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
