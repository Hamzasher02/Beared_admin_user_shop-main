import 'package:flutter/material.dart';
import '../Screens/BarbarShopScreen/Barbar_Shop.dart';
import '../Screens/HomeScreen/Beard_Contest.dart';
import '../Screens/HomeScreen/Home.dart';
import '../Screens/HomeScreen/Shopping.dart';
import '../Screens/ProfileScreen/profile.dart';
import '../Utils/appimages.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);
  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}
class _AppNavigationBarState extends State<AppNavigationBar> {
  int Index = 0;
  List<Widget>  widgetList = [
    const Homepage(),
    const BarbarShopScreen(),
    const Contest(),
    const shopping(),
    const UserProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 78,
        width: 428,
        child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            backgroundColor: Colors.black26,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.transparent,
            onTap: (index){
              setState(() {
                Index=index;
              });
            },
            currentIndex: Index,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.splashLogo)),
                  label: "Beard Coins"),
              const BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "Barbar Shop",),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.contestImg)),label: " Contest"),
              const BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Shopping"),
              const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
            ]
        ),
      ),
      body:  widgetList[Index],
    );
  }
}

