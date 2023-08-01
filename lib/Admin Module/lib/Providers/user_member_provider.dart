import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/UserManagmentScreen/BarberShop/Model.dart';
import '../screens/UserManagmentScreen/Member/user_member_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';

class AdminUserMemberProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<UserMemberModel> userMemberModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getUserMemberData() async {
    print("hello");

    setLoading(true);
    final url = AppUrl.baseUrl + AppUrl.userMember;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print("this is response${response.body}");
        setLoading(false);
        userMemberModel.clear();
        userMemberModel.add(UserMemberModel.fromJson(jsonDecode(response.body)));
        notifyListeners();
        print("ne ${response.statusCode}");
        print(response.body.toString());
        print('This is a :::::${AppConstants.userToken}');

      } else {
        print("this is response2${response.body}");
        setLoading(false);
        throw Exception('Failed to fetch posts${response.statusCode}');
      }
    } catch (error) {
      print("this is respons");
      // notifyListeners();
      print("$error");
    }
  }
}

