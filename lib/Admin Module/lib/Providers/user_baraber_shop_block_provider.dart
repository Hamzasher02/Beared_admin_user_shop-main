import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/UserManagmentScreen/BarberShop/block_user_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';

class AdminUserBaraberShopBlockProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<BlockUserBaraberShopModel> blockUserModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> blockManagementUser(String id) async {
    print("hello");

    setLoading(true);
    final url = "${AppUrl.baseUrl}blockBarber/$id";
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
        blockUserModel.clear();
        blockUserModel.add(BlockUserBaraberShopModel.fromJson(jsonDecode(response.body)));
        notifyListeners();
        print("ne ${response.statusCode}");
        print(response.body.toString());
        print('This is a :::::${AppConstants.userToken}');
        AppConstants.flutterToast(message: "This user Barber and profile Blocked successfully");
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

