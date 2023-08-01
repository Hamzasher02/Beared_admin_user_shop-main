import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../screens/DashBoardScreen/dashBoard_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';

class AdminDashBoardProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<AdminDashBoardModel> adminDashBoardModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getProviderDashboard() async {
    if (kDebugMode) {
      print("Welcome");
    }

    setLoading(true);
    final url = AppUrl.baseUrl + AppUrl.adminDashboardUrl;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 201) {
        if (kDebugMode) {
          print("this is response${response.body}");
        }
        setLoading(false);
        adminDashBoardModel.clear();
        adminDashBoardModel.add(AdminDashBoardModel.fromJson(jsonDecode(response.body)));
        notifyListeners();
        if (kDebugMode) {
          print("ne ${response.statusCode}");
        }
        if (kDebugMode) {
          print(response.body.toString());
        }
        if (kDebugMode) {
          print('This is a :token:${AppConstants.userToken}');
        }

      } else {
        if (kDebugMode) {
          print("this is response2${response.body}");
        }
        setLoading(false);
        throw Exception('Failed to fetch posts${response.statusCode}');
      }
    } catch (error) {
      if (kDebugMode) {
        print("this is respons");
      }
      if (kDebugMode) {
        print("$error");
      }
    }
  }
}

