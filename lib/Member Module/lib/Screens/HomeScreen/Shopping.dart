import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shopping screens/product screen.dart';

class shopping extends StatefulWidget {
  const shopping({Key? key}) : super(key: key);

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  List<String> arrimg = [
    'assets/images/member/comb.png',
    'assets/images/member/spray.png',
    'assets/images/member/lotion.png',
    'assets/images/member/brush.png'
  ];
  List<String> arrimg1 = [
    'assets/images/member/pic.png',
    'assets/images/member/pic1.png',
    'assets/images/member/pic2.png',
    'assets/images/member/pic3.png'
  ];
  List<String> arrtxt = ['Comb', 'Spray', 'Lotion', 'Brush'];
  List<String> arrtxt1 = ["\$1.47", '\$6.47', '\$2.47', '\$4.15'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Shop",
                style: GoogleFonts.nunito(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Explore Products & Merchandise",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 60.h,
                width: 378.w,
                child: Row(
                  children: [
                    SizedBox(
                      height: 60.h,
                      width: 303.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: InkWell(
                                onTap: () {}, child: Icon(Icons.search)),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.38)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    //Spacer(),

                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      height: 60.h,
                      width: 65.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        child:
                            Center(child: Icon(Icons.shopping_cart_outlined)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(186, 94, 239, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Trending",
                style: GoogleFonts.nunito(
                    color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 1.5 / 2,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Products(),
                            ));
                      },
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                            children: [
                              Image.asset(
                                arrimg[index],
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Padding(padding: EdgeInsets.all(7) ),
                                    Text(
                                      arrtxt[index],
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "The Set of Black Comb and...",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),

                                    Row(
                                      children: [
                                        Text(
                                          arrtxt1[index],
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 90.w,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 11,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 115,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.black87,
                            radius: 14,
                            child: Icon(
                              Icons.favorite_border,
                              size: 17,
                            ),
                          ),
                        ),
                      ]),
                    );
                  }),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Categories",
                style: GoogleFonts.nunito(
                    color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),
              ),
              SizedBox(
                height: 15.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 9,
                    childAspectRatio: 1,
                    mainAxisExtent: 100),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.transparent,
                    elevation: 200,
                    child: Column(
                      children: [
                        Image.asset(
                          arrimg1[index],
                          fit: BoxFit.fitHeight,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(arrtxt[index]),
                      ],
                    ),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
