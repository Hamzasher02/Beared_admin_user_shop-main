
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../screens/beardContest/beard_contest_model.dart';
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';

class BeardContestBlockProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<BeardContestBlockModel> beardContestBlockModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> blockBeardContestUser(String id) async {
    if (kDebugMode) {
      print("hello");
    }

    setLoading(true);
    final url = "${AppUrl.baseUrl}participantsblock/$id";
    try {
      final response = await http.put(
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
        beardContestBlockModel.clear();
        beardContestBlockModel.add(BeardContestBlockModel.fromJson(jsonDecode(response.body)));
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
        AppConstants.flutterToast(message: "This user Beard Contest profile Blocked successfully");
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

