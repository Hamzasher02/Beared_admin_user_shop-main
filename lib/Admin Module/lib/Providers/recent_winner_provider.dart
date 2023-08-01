import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/UserManagmentScreen/BarberShop/Model.dart';
import '../screens/beardContest/BeardContestResult/recent_winner_model.dart';
import '../utils/app_constant.dart';
import '../utils/appurls.dart';

class AdminBeardRecentWinnerProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<ResentContestWinnerModel> resentContestWinnerModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getBeardContestRecentWinner() async {
    if (kDebugMode) {
      print("++++++++++");
    }

    setLoading(true);
    final url = AppUrl.baseUrl + AppUrl.beardContestResentWinner;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print("this is response${response.body}");
        }
        setLoading(false);
        resentContestWinnerModel.clear();
        resentContestWinnerModel.add(ResentContestWinnerModel.fromJson(jsonDecode(response.body)));
        notifyListeners();
        if (kDebugMode) {
          print("ne ${response.statusCode}");
        }
        if (kDebugMode) {
          print(response.body.toString());
        }
        if (kDebugMode) {
          print('This is a :::::${AppConstants.userToken}');
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
      // notifyListeners();
      if (kDebugMode) {
        print("$error");
      }
    }
  }
}

