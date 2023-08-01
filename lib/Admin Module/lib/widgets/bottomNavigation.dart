
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/Staff/staff.dart';
import '../screens/beardContest/beardcontest.dart';
import '../screens/DashBoardScreen/dashboard.dart';
import '../screens/store/store.dart';
import '../screens/UserManagmentScreen/userManagement.dart';
import '../utils/colors.dart';
import '../utils/images.dart';

class BottomNavigation extends StatefulWidget{
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex=0;

  bool yes=false;

  final tabs=[
    AdminDashboard(),
    const UserManagement(),
    BeardContest(),
    Store(),
    Staff(),
    
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: tabs[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: containerbg,
        selectedItemColor: iconwhite.withOpacity(.87),
        unselectedItemColor: iconwhite.withOpacity(.38),
        items: 
      [
        BottomNavigationBarItem(
          icon:Icon(Icons.home_filled ),
          label: "Home",
          backgroundColor: containerbg
          ),
          BottomNavigationBarItem(
          icon:Icon(Icons.person ),
          label: "User",
          ),
          BottomNavigationBarItem(
            icon:Column(
              children: [
                yes? Image.asset(trophywhite):Image.asset(trophygrey),
                SizedBox(height: 5.h,), 
              ],
            ),
            label: "Contest"
            ),
          BottomNavigationBarItem(
          icon:Icon(Icons.shopping_bag_rounded ),
          label: "Shopping",
          ),
          BottomNavigationBarItem(
          icon:Icon(Icons.people_alt ),
          label: "Staff",
          ),
      
      ],
      onTap:(value) {
        setState(() {
          _currentIndex=value;
          if(_currentIndex==2){
            yes =true;
        }else{
          yes=false;
        }
        });
        print(_currentIndex);
        
                },
      ),
   );
  }
}
