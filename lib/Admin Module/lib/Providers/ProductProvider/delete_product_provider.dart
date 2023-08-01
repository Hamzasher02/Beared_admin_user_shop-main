import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../Utils/app_constant.dart';
import '../../screens/store/product/producttabbarview/delete_product_model.dart';
import '../../utils/appurls.dart';


class ActiveProductDeleteProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<ActiveProductDeleteModel> activeProductDeleteModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> deleteActiveProduct(String id) async {
    setLoading(true);
    final url = "${AppUrl.baseUrl}products/$id";
    try {
      final response = await http.delete(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer ${AppConstants.userToken}",
          "Content-Type": "application/json",
        },
      );
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print("this is response${response.body}");
        }
        setLoading(false);
        activeProductDeleteModel.clear();
        activeProductDeleteModel.add(ActiveProductDeleteModel.fromJson(jsonDecode(response.body)));
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
        AppConstants.flutterToast(message: activeProductDeleteModel[0].message.toString());

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

