// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../../Utils/app_constant.dart';
// import '../../screens/beardContest/UpdateDate/contest_time_update_model.dart';
// import '../../utils/appurls.dart';
//
// class UpdateTimeProvider with ChangeNotifier {
//   final List<ContestTimeUpdateModel> contestTimeUpdateModel = [];
//
//
//   bool _loading = false;
//   bool get loading => _loading;
//
//   setLoading(bool value) {
//     _loading = value;
//     notifyListeners();
//   }
//
//   void upDateTime({
//     required String startTime,
//     required String endTime,
//     required String id,
//     required BuildContext context}) async {
//     final url = "${AppUrl.baseUrl}contests/$id";
//     final payload = {
//       'startDate': startTime,
//       'endDate': endTime, // Replace with the user's email
//     };
//     try {
//       final response = await http.put(
//         Uri.parse(url),
//         body: json.encode(payload),
//         headers: {'Content-Type': 'application/json'},
//       );
//
//       if (response.statusCode == 200) {
//         if (kDebugMode) {
//           print('Email sent successfully');
//         }
//         if (kDebugMode) {
//           print('Response: ${response.body}');
//         }
//       } else {
//         if (kDebugMode) {
//           print('Failed to send email');
//         }
//         if (kDebugMode) {
//           print('Status code: ${response.statusCode}');
//         }
//         if (kDebugMode) {
//           print('Response: ${response.body}');
//         }
//         AppConstants.flutterToast(message: 'Date Updated'.toString());
//       }
//     } catch (error) {
//       AppConstants.flutterToast(message: error.toString());
//
//       if (kDebugMode) {
//         print('An error occurred');
//       }
//       if (kDebugMode) {
//         print('Error: $error');
//       }
//     }
//   }
// }


/// New code

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../Utils/app_constant.dart';
import '../../utils/appurls.dart';

class UpdateTimeProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> updateDateTime({
    required String startTime,
    required String endTime,
    required String id,
  }) async {
    setLoading(true);
    final url = "${AppUrl.baseUrl}contests/$id";
    final payload = {
      'startDate': startTime,
      'endDate': endTime,
    };
    try {
      final response = await http.put(
        Uri.parse(url),
        body: json.encode(payload),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('Start and end dates updated successfully');
          print('Response: ${response.body}');
        }
        AppConstants.flutterToast(message: "Time updated successfully");
      } else {
        if (kDebugMode) {
          print('Failed to update start and end dates');
          print('Status code: ${response.statusCode}');
          print('Response: ${response.body}');
        }
        AppConstants.flutterToast(message: "Failed to update time");
      }
    } catch (error) {
      if (kDebugMode) {
        print('An error occurred');
        print('Error: $error');
      }
      AppConstants.flutterToast(message: "An error occurred.");
    } finally {
      setLoading(false);
    }
  }
}
