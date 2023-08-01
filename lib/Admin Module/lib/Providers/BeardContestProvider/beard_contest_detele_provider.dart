import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../screens/beardContest/deleteContest_model.dart';
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';

class AdminBeardContestDeleteProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  var data;

  final List<BeardContestDeleteModel> beardContestDeleteModel = [];

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> deleteBeardContest(String id) async {
    setLoading(true);
    final url = "${AppUrl.baseUrl}participantsDelete/$id";
    try {
      final response = await http.delete(
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
        beardContestDeleteModel.clear();
        beardContestDeleteModel.add(BeardContestDeleteModel.fromJson(jsonDecode(response.body)));
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
        AppConstants.flutterToast(message: beardContestDeleteModel[0].message.toString());

      } else {
        if (kDebugMode) {
          print("this is response2${response.body}");
        }
        setLoading(false);
        throw Exception('Failed to fetch posts${response.statusCode}');
      }
    } catch (error) {
      if (kDebugMode) {
        print("this is response");
      }
      // notifyListeners();
      if (kDebugMode) {
        print("$error");
      }
    }
  }
}

