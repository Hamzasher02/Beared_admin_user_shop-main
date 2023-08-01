import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static String saveUserToken = 'token';
  static String getUserToken = '';
  static String saveUserEmail = 'userEmail';
  static String saveUser = 'userEmail';
  static String saveUserID = 'id';

  static String saveRole = 'role';

  static String userID = '';
  static String userToken = '';
  static String getUserType = '';
  static String userEmail = '';
  static String userName = '';
  static String userRole = '';

  static flutterToast({required String message}) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}