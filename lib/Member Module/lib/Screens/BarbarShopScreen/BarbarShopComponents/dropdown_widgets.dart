
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  bool isOpen = false;
  String selectOption= 'Choose Campaign';
  List<String> state = [
    '10 Beard Coins =  10€ Discount',
    '20 Beard Coins = Free 1 Cut',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              isOpen = !isOpen;
              setState(() {
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(selectOption,
                      style: TextStyle(
                        color:AppColors.white38Colors,
                        fontSize: 18.sp,
                      ),
                    ),
                    Icon(isOpen ? Icons.arrow_drop_up:Icons.arrow_drop_down_rounded,size: 30.sp,)
                  ],
                ),
              ),

            ),
          ),
          if(isOpen)
            ListView(
              primary: true,shrinkWrap: true,
              children: state.map((e) => Container(
                decoration: BoxDecoration(
                  color: selectOption == e ? Colors.red : Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: (){
                        selectOption = e ;
                        isOpen = false;
                        setState(() {
                        });
                      },
                      child: Text(e)),
                ),

              )).toList(),
            ),
        ],
      ),
    );
  }
}
