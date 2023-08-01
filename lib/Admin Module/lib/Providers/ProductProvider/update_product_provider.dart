import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../Utils/app_constant.dart';
import '../../screens/store/product/producttabbarview/UpdateProduct/update_product_model.dart';
import '../../utils/appurls.dart';
import '../../utils/utils.dart';

class UpdateProductProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  final List<UpdateProductModel> updateProductModel = [];

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> updateProduct({
    required String id,
    required String name,
    required String price,
    required String stock,
    required BuildContext context,
  }) async {
    setLoading(true);
    try {
      final url = Uri.parse("${AppUrl.baseUrl}updateProducts/$id");
      final headers = {
        "Authorization": "Bearer ${AppConstants.userToken}",
        "Content-Type": "application/json",
      };
      final body = {
        'name': name,
        'price': price,
        'stock': stock,
      };

      final response = await http.put(url, headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {
        Utils().toastMassage('Product Update Successfully');
        print(response.statusCode.toString());
        print(response.body.toString());

        Navigator.pop(context);
        setLoading(false);
      } else {
        setLoading(false);
        Utils().toastMassage('Something went wrong');
      }
    } catch (error) {
      print(error.toString());
      setLoading(false);
    }
  }
}
