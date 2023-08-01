// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import '../../Utils/app_constant.dart';
// import '../../screens/store/product/producttabbarview/update_stock_model.dart';
// import '../../utils/appurls.dart';
//
//
// class UpdateStockProvider extends ChangeNotifier {
//   bool _loading = false;
//   bool get loading => _loading;
//   var data;
//
//   final List<UpdateStockModel> updateStockModel = [];
//
//   setLoading(bool isLoading) {
//     _loading = isLoading;
//     notifyListeners();
//   }
//
//   Future<void> putUpdateStock(String id, String stock) async {
//     if (kDebugMode) {
//       print("welcome");
//     }
//
//     setLoading(true);
//     try {
//       final response = await http.put(
//         Uri.parse("${AppUrl.baseUrl}updateStocks/$id"),
//           headers: {
//           "Authorization": "Bearer ${AppConstants.userToken}",
//           "Content-Type": "application/json",
//         },
//         body: {
//           'stock': stock.toString(),
//         },
//       );
//       if (response.statusCode == 200) {
//         if (kDebugMode) {
//           print("Stock update response${response.body}");
//         }
//         setLoading(false);
//         updateStockModel.clear();
//         updateStockModel.add(UpdateStockModel.fromJson(jsonDecode(response.body)));
//         notifyListeners();
//         if (kDebugMode) {
//           print("ne ${response.statusCode}");
//         }
//         if (kDebugMode) {
//           print(response.body.toString());
//         }
//         if (kDebugMode) {
//           print('This is a :::::${AppConstants.userToken}');
//         }
//         AppConstants.flutterToast(message: updateStockModel[0].message.toString());
//       } else {
//         if (kDebugMode) {
//           print("this is response2${response.body}");
//         }
//         setLoading(false);
//         throw Exception('Failed to fetch posts${response.statusCode}');
//       }
//     } catch (error) {
//       if (kDebugMode) {
//         print("this is respons");
//       }
//       // notifyListeners();
//       if (kDebugMode) {
//         print("$error");
//       }
//     }
//   }
// }
//

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../Utils/app_constant.dart';
import '../../screens/store/product/producttabbarview/update_stock_model.dart';
import '../../utils/appurls.dart';

class UpdateStockProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<UpdateStockModel> updateStockModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> putUpdateStock(String id, String stock) async {
    setLoading(true);

    try {
      final url = Uri.parse("${AppUrl.baseUrl}updateStocks/$id");
      final headers = {
        "Authorization": "Bearer ${AppConstants.userToken}",
        "Content-Type": "application/json",
      };
      final body = jsonEncode({"stock": stock});

      final response = await http.put(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        print("stock update response ${response.statusCode}");
        setLoading(false);
        updateStockModel.clear();
        updateStockModel.add(
            UpdateStockModel.fromJson(jsonDecode(response.body)));
        notifyListeners();

        // Display success message
        final message = updateStockModel[0].message;
        AppConstants.flutterToast(message: message.toString());
      } else {
        setLoading(false);
        throw Exception('Failed to update stock (${response.statusCode})');
      }
    } catch (error) {
      setLoading(false);
      print("Error updating stock: $error");
    }
  }
}
