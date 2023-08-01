
import 'package:beared_friend/Member%20Module/lib/Screens/ProfileScreen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../BarbarProfileScreen/barbar_profile.dart';
import '../../shopping screens/product screen.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> with SingleTickerProviderStateMixin {
  Widget myRow({required String title, required name }){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38)),),
        Text(name,style: TextStyle(color: Colors.white60),),
      ],
    );
  }

  List<String> arrimg = ['assets/images/comb.png', 'assets/images/spray.png', 'assets/images/lotion.png', 'assets/images/brush.png'];
  List<String> arrtxt = ['Comb', 'Spray', 'Lotion', 'Brush'];
  List<String> arrtxt1 = ["\$1.47", '\$6.47', '\$2.47', '\$4.15'];
  List<String> arrOptions = ['Creative Cuts', 'Sunset Barbar', 'Style Cave'];
  List<String> arrimgs = ['assets/images/shop1.png', 'assets/images/shop2.png', 'assets/images/shop3.png'];
  List<String> arrsub = ['Pindi - 34 Kms', 'Irale - 54 Kms', 'Lahore - 21 Kms'];

  bool icon = false;
  late TabController _tabController;
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(18.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(child: Container( height: 40.h,width: 20.w,decoration: BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/images/arrow head.png")),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> UserProfileScreen(),));
                  },),
                SizedBox(height: 35.h,),
                Text("Wishlist", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                Text("Your Favorite Products & Barbers",style: TextStyle(color: Colors.white60),),
                SizedBox(height: 30.h,),
                 Expanded(
                   child: Column(
                    children: [
                      Container(height: 80.h,color: Colors.transparent,
                        child: TabBar(controller: _tabController,
                            padding: EdgeInsets.all(6.sp),
                            unselectedLabelColor: Colors.white38,
                            indicator:BoxDecoration(borderRadius:BorderRadius.circular(20.r),color: Color.fromRGBO(186, 94, 239, 1)),
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.transparent,physics: ClampingScrollPhysics(),
                            tabs:[
                              Tab(
                                child: Container(height: 60.h,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),),
                                  child: Align(alignment: Alignment.center,
                                    child: Text("Barbershops"),),
                                ),

                              ),
                              Tab(
                                child: Container(height: 60.h,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),),
                                  child: Align(alignment: Alignment.center,
                                    child: Text("Products"),),
                                ),

                              ),
                            ]),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: myTabs.length,
                          child: TabBarView(controller: _tabController,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30.h,),
                                  Text("Favorited Products", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                                  SizedBox(height: 20.h,),
                                  GridView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                                      itemCount:4,
                                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 150,
                                        childAspectRatio: 1.5/ 2,
                                        crossAxisSpacing: 22,
                                        mainAxisExtent:220,
                                        mainAxisSpacing: 20,

                                      ),
                                      itemBuilder: (context,index){
                                        return GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Products(),));
                                          },
                                          child: Stack(
                                              children: [Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black38,
                                                    borderRadius: BorderRadius.circular(15.r)
                                                ),
                                                child: Column(
                                                  children: [
                                                    Image.asset(arrimg[index],fit: BoxFit.fill,),
                                                    SizedBox(height: 10.h,),
                                                    Padding(
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          // Padding(padding: EdgeInsets.all(7) ),
                                                          Text(arrtxt[index], style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
                                                          Text("The Set of Black Comb and...", style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,color: Colors.grey),),
                                                          SizedBox(height: 15.h,),

                                                          Row(
                                                            children: [
                                                              Text(arrtxt1[index], style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700),),
                                                              SizedBox(width: 90.w,),
                                                              CircleAvatar(backgroundColor: Colors.white,radius: 10.r,
                                                                child: Icon(Icons.arrow_forward_ios,size: 11,),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                                Positioned(top: 115,right: 5,
                                                  child: InkWell(onTap: (){
                                                    setState(() {
                                                      icon = !icon;
                                                    });
                                                  },
                                                    child: CircleAvatar( backgroundColor: Colors.black87,radius: 14,
                                                      child: Icon(Icons.favorite,size: 17, color:icon? Color(0xffFFA500): Colors.white , ),
                                                    ),
                                                  ),
                                                ),
                                              ]
                                          ),
                                        );
                                      }),
                                ],
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30.h,),
                                  Text("Favorited Barbarshops", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.38), fontSize: 16),),
                                  SizedBox(height: 20.h,),
                                  ListView.builder(
                                    shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, int index) =>
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 8.0),
                                          child: Card(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 90,
                                              child: ListTile(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=> BarbarProfileScreen(),));
                                                },
                                                leading: CircleAvatar (
                                                  backgroundImage: AssetImage(arrimgs[index]), radius: 30,
                                                ),
                                                title: Row(
                                                  children: [
                                                    Text(arrOptions[index],style: TextStyle(fontSize: 18),),
                                                    SizedBox(width: 5.w,),
                                                    Container(
                                                      height: 25.h, width: 64.h,
                                                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                                      alignment: Alignment.center,
                                                      child: Row(
                                                        children: [
                                                          SizedBox(width: 5.w,),
                                                          Icon(Icons.star, color:Colors.black,size:15 ),
                                                          Text('4.9' , style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 14,),),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                subtitle: Text(arrsub[index]),

                                                trailing: Icon(Icons.arrow_forward_ios_sharp,color:Colors.white38,size: 15),
                                              ),
                                            ),

                                          ),
                                        ),

                                    itemCount: arrOptions.length,

                                  )

                                ],
                              ),
                            ],
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
