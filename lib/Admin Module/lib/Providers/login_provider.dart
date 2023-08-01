import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/Auth/LogInScreen/admin_login_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';
import '../widgets/bottomNavigation.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;
  final List<AdminLoginModel> adminLoginModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  bool _passwordVisible = false;
  bool get passwordVisible => _passwordVisible;

  void togglePasswordVisibility() {
    _passwordVisible = !_passwordVisible;
    notifyListeners();
  }

  Future<Object> login(
      {required String email,
        required String password,
        required BuildContext context}) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(color: Colors.blue),
        );
      },
      barrierDismissible: false,
    );
    try {
      final url = Uri.parse("${AppUrl.baseUrl}${AppUrl.adminLogin}");
      final headers = {'Content-Type': 'application/json'};
      final data = {'email': email, 'password': password};
      final body = jsonEncode(data);
      final response = await http.post(url, headers: headers, body: body);
      Map<String, dynamic> map = jsonDecode(response.body.toString());

      List<AdminLoginModel> data12 = [];

      print("this is our response ${map.toString()}");
      if (response.statusCode == 200) {
        print("loading login");

        final prefs = await SharedPreferences.getInstance();
        data12.clear();
        data12.add(AdminLoginModel.fromJson(map));

        AppConstants.userToken = data12[0].token.toString();
        prefs.setString(AppConstants.saveUserToken, map['token']);
        prefs.setString(AppConstants.saveUserID, data12[0].user.id.toString());
        prefs.setString(AppConstants.saveUserEmail, data12[0].user.email);
        prefs.setString(AppConstants.saveRole, data12[0].user.role);

        AppConstants.userEmail = data12[0].user.email;
        AppConstants.userID = data12[0].user.id.toString();
        AppConstants.userToken = data12[0].token.toString();

        AppConstants.userToken = prefs.getString(AppConstants.saveUserToken)!;
        AppConstants.userID = prefs.getString(AppConstants.saveUserID)!;
        AppConstants.userEmail = prefs.getString(AppConstants.saveUserEmail)!;
        AppConstants.userRole = prefs.getString(AppConstants.saveRole)!;

        AppConstants.flutterToast(message: "Successfully login");
        print("this is token  ${AppConstants.userToken} in here ");
        print("this is role  ${AppConstants.userRole} in here ");
        print("this is Id  ${AppConstants.userID} in here ");

        if (AppConstants.userRole == "admin") {
          Navigator.of(context).pop();
          Get.offAll(() =>  BottomNavigation());
        }
      } else {
        print("this is else  ${response.statusCode} in here ");
        AppConstants.flutterToast(message: response.body.toString());
        print(response.reasonPhrase);
      }
    } catch (error) {
      // Overseer.isPosting.addStream(Stream.value(false));
      print("this is catch ${error}");
      AppConstants.flutterToast(message: error.toString());
    }
    return true;
  }
}