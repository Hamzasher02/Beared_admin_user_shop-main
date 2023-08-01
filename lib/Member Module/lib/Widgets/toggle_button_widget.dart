import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return  FlutterSwitch(
            width: 45.w,
            height: 23.h,
            valueFontSize: 15.sp,
            toggleSize: 20.0,
            activeColor: Color.fromRGBO(186, 94, 239, 1),
            inactiveColor: Colors.grey,
            value: status,
            borderRadius: 30.0,
            padding: 1.0,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
    );



  }
}