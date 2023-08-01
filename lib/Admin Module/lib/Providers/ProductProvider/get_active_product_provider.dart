import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../screens/store/product/producttabbarview/ActiveProduct/active_product_model.dart';
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';

class AdminActiveProductProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<ActiveProductModel> activeProductModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getActiveProduct() async {
    print("hello");

    setLoading(true);
    final url = AppUrl.baseUrl + AppUrl.getActiveProduct;
    try {
      final response = await http.get(Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Content-Type": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print("this is response${response.body}");
        setLoading(false);
        activeProductModel.clear();
        activeProductModel.add(ActiveProductModel.fromJson(jsonDecode(response.body)));
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

