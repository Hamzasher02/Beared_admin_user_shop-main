import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../Utils/app_constant.dart';
import '../../utils/appurls.dart';

class AddNewStaffProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
  void staffAdded({   required String email, required BuildContext context}) async {
    final url = AppUrl.baseUrl+AppUrl.addStaff;
    // Replace with the actual API endpoint URL

    // Define the request payload
    final payload = {
      'email': email.toString(), // Replace with the user's email
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(payload),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('Email sent successfully');
        }
        if (kDebugMode) {
          print('Response: ${response.body}');
        }
      } else {
        if (kDebugMode) {
          print('Failed to send email');
        }
        if (kDebugMode) {
          print('Status code: ${response.statusCode}');
        }
        if (kDebugMode) {
          print('Response: ${response.body}');
        }
        AppConstants.flutterToast(message: 'Staff Add email sent'.toString());

      }
    } catch (error) {
      AppConstants.flutterToast(message: error.toString());

      if (kDebugMode) {
        print('An error occurred');
      }
      if (kDebugMode) {
        print('Error: $error');
      }
    }
  }
}