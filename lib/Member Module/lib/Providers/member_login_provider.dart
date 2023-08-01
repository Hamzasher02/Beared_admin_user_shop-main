import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:beared_friend/Admin%20Module/lib/utils/app_constant.dart';
import 'package:beared_friend/Admin%20Module/lib/utils/appurls.dart';
import '../Screens/auth/LogInScreen/model.dart';
import '../Widgets/bottom_navigation_bar.dart';


class AuthMemberProvider with ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;

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
      final url = Uri.parse("${AppUrl.baseUrl}${AppUrl.memberLogin}");
      final headers = {'Content-Type': 'application/json'};
      final data = {'email': email, 'password': password};
      final body = jsonEncode(data);
      final response = await http.post(url, headers: headers, body: body);
      Map<String, dynamic> map = jsonDecode(response.body.toString());

      List<MemberLoginModel> data12 = [];

      print("this is our response ${map.toString()}");
      if (response.statusCode == 200) {
        print("response login${response}");
        print("loading login");

        final prefs = await SharedPreferences.getInstance();
        data12.clear();
        data12.add(MemberLoginModel.fromJson(map));

        AppConstants.userToken = data12[0].token.toString();
        prefs.setString(AppConstants.saveUserToken, map['token']);

        AppConstants.userToken = prefs.getString(AppConstants.saveUserToken)!;

        AppConstants.flutterToast(message: "Successfully login");
        print("this is token  ${AppConstants.userToken} in here ");
        print("this is role  ${AppConstants.userRole} in here ");
        if (AppConstants.userRole == "admin") {
          Navigator.of(context).pop();
          Get.offAll(() =>  AppNavigationBar());
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