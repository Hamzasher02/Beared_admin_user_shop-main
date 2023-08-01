import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';
import '../../utils/utils.dart';

class AdminChangePasswordProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<String> changePassword({
    required String id,
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    setLoading(true);
    try {
      final url = Uri.parse("${AppUrl.baseUrl}updateCurrentPswd/$id");
      final headers = {
        "Authorization": "Bearer ${AppConstants.userToken}",
        "Content-Type": "application/json",
      };
      final body = {
        "currentPassword": currentPassword,
        "newPassword": newPassword,
        "confirmPassword": confirmPassword,
      };

      final response = await http.put(url, headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {
        setLoading(false);
        Utils().toastMassage('Password changed successfully');
        return 'Password changed successfully';
      } else if (response.statusCode == 401) {
        setLoading(false);
        Utils().toastMassage('Authentication failed: Invalid token');
        return 'Authentication failed: Invalid token';
      } else {
        setLoading(false);
        Utils().toastMassage('Failed to change password: ${response.statusCode}');
        throw Exception('Failed to change password: ${response.statusCode}');
      }
    } catch (error) {
      setLoading(false);
      print("Error changing password: $error");
      throw Exception('Error changing password');
    }
  }
}
