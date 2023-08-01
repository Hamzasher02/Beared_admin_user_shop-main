import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/UserManagmentScreen/Member/member_block_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';

class AdminUserMemberBlockProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<MemberBlockModel> memberBlockModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> putBlockMemberUser(String id) async {
    print("hello");

    setLoading(true);
    final url = "${AppUrl.baseUrl}blockMember/$id";
    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print("this is response${response.body}");
        setLoading(false);
        memberBlockModel.clear();
        memberBlockModel.add(MemberBlockModel.fromJson(jsonDecode(response.body)));
        notifyListeners();
        print("ne ${response.statusCode}");
        print(response.body.toString());
        print('This is a :::::${AppConstants.userToken}');
        AppConstants.flutterToast(message: "This user Member and profile Blocked successfully");
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

