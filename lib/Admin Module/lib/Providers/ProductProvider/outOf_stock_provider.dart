import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../Utils/app_constant.dart';
import '../../screens/store/product/producttabbarview/OutOfStockProduct/outOf_stock_model.dart';
import '../../utils/appurls.dart';


class AdminOutOfStockProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<OutOfStockModel> outOfStockModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getOutOfStock() async {
    if (kDebugMode) {
      print("welcome");
    }

    setLoading(true);
    final url = AppUrl.baseUrl + AppUrl.outOfStock;
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
        outOfStockModel.clear();
        outOfStockModel.add(OutOfStockModel.fromJson(jsonDecode(response.body)));
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
      if (kDebugMode) {
        print("$error");
      }
    }
  }
}

