import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../Utils/app_constant.dart';
import '../../screens/store/product/producttabbarview/activated_product_model.dart';
import '../../utils/appurls.dart';


class ActivatedProductProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<ActivatedProductModel> activatedProductModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> activateProduct(String id) async {
    if (kDebugMode) {
      print("welcome");
    }

    setLoading(true);
    final url = "${AppUrl.baseUrl}activateProduct/$id";
    try {
      final response = await http.post(
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
        activatedProductModel.clear();
        activatedProductModel.add(ActivatedProductModel.fromJson(jsonDecode(response.body)));
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
        AppConstants.flutterToast(message: "This product is Activated");
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

