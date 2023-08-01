import 'package:beared_friend/t_key.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../App Constants/App Colors/app_colors.dart';
import '../../App Constants/App Fonts/app_fonts.dart';
import '../Barber Profile View/barber_profile_view.dart';
import '../Beard Contest/beard_contest.dart';
import '../Compaign View/compaign_view.dart';
import '../Profile View/profile_view.dart';
import '../Shoping View/shopping_view.dart';
import 'Providers/bottom_nav_bar_provider.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  }) : super(key: key);

  final int currentIndex;
  final void Function(int index) onTap;
  final List<BottomNavigationBarItem> items;

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  static const List<Widget> _widgetOptions = <Widget>[
    BarberProfileDetails(),
    CompaignView(),
    BeardContest(),
    ShoppingView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
        builder: (context, bottomNavigationBarProvider, child) {
      return Scaffold(
        body:
            _widgetOptions.elementAt(bottomNavigationBarProvider.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavigationBarProvider.currentIndex,
          selectedItemColor: AppColors.whiteColor,
          onTap: (int index) {
            bottomNavigationBarProvider.setCurrentIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.dialogBoxColor,
          iconSize: 20,
          unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontFamily: AppFonts.nunitoSemiBold,
              letterSpacing: 0.3),
          selectedLabelStyle: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 12,
              fontFamily: AppFonts.nunitoSemiBold,
              letterSpacing: 0.3,
              fontWeight: FontWeight.bold),
          selectedIconTheme: IconThemeData(color: AppColors.whiteColor),
          unselectedItemColor: AppColors.iconColor,
          elevation: 1,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: AppColors.dialogBoxColor,
              icon: const Icon(
                Icons.home_rounded,
                size: 30,
              ),
              label: TKeys.Home.translate(context),
              //  'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.dialogBoxColor,
              icon: const Icon(
                Icons.campaign,
                size: 30,
              ),
              label:
                  // TKeys..translate(context),
                  'Campaign',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.dialogBoxColor,
              icon: const Icon(
                Icons.wine_bar_sharp,
                size: 30,
              ),
              label: TKeys.Contest.translate(context),
              // 'Contest',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.dialogBoxColor,
              icon: const Icon(
                Icons.shopping_bag,
                size: 30,
              ),
              label: TKeys.Shoping.translate(context),
              // 'Shopping',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.dialogBoxColor,
              icon: const Icon(
                Icons.account_circle,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
