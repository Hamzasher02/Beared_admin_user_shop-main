import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';

class PostDateProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> starPostDate({
    required String startTime,
    required String endTime,
    required BuildContext context,
  }) async {
    setLoading(true);

    final url = "${AppUrl.baseUrl}${AppUrl.contestSetTime}";
    final payload = {
      'startDate': startTime,
      'endDate': endTime,
    };
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(payload),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 201) {
        if (kDebugMode) {
          print('Start and end dates added successfully');
          print('Response: ${response.body}');
        }
        AppConstants.flutterToast(message: "Dates added successfully.");
      } else {
        if (kDebugMode) {
          print('Failed to add start and end dates');
          print('Status code: ${response.statusCode}');
          print('Response: ${response.body}');
        }
        AppConstants.flutterToast(message: "Failed to add dates.");
      }
    } catch (error) {
      AppConstants.flutterToast(message: error.toString());
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