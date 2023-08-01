// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import '../../Utils/app_constant.dart';
// import '../../utils/appurls.dart';
// import '../../utils/utils.dart';
//
// class UpdateProfileProvider extends ChangeNotifier {
//
//
//   bool _loading = false;
//   bool get loading => _loading;
//   final picker = ImagePicker();
//   XFile? _pickedFile;
//   XFile? get pickedFile => _pickedFile;
//   setLoading(bool isLoading) {
//     _loading = isLoading;
//     notifyListeners();
//   }
//
//   void getImageFromGallery() async {
//     _pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
//     notifyListeners();
//   }
//   Future<void> updateProfile({
//     required String id,
//     required String name,
//     required String email,
//     required String phoneNo,
//
//   }) async {
//     setLoading(true);
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse("${AppUrl.baseUrl}admin/profile/$id"),
//     );
//
//     var image = _pickedFile;
//
//     try {
//       var file = File(image!.path);
//       if (!file.existsSync()) {
//         print('File does not exist: ${file.path}');
//         return;
//       }
//
//       var stream = http.ByteStream(Stream.castFrom(file.openRead()));
//       var length = await file.length();
//       print("Image path: ${file.path}");
//
//       var multipartFile = http.MultipartFile(
//         'profilePicture',
//         stream,
//         length,
//         filename: file.path.split('/').last,
//       );
//
//       request.files.add(multipartFile);
//     } catch (e) {
//       print('Exception while adding image to request: $e');
//       return;
//     }
//
//     request.fields.addAll({
//       'name': name.toString(),
//       'email': email.toString(),
//       'number': phoneNo.toString(),
//
//     });
//
//     request.headers['Authorization'] = 'Bearer ${AppConstants.userToken}';
//     request.headers['Accept'] = 'application/json';
//
//     try {
//       http.StreamedResponse response = await request.send();
//       if (response.statusCode == 200) {
//         print("update profile${response}");
//         setLoading(false);
//         Utils().toastMassage('Uploaded Successfully');
//         // clearData();
//         // Get.offAll(() => WelcomePageSeller());
//       } else {
//         setLoading(false);
//         Utils().toastMassage(
//           'Upload failed with status code ${response.statusCode}',);
//       }
//     } catch (e) {
//       print('Exception during image upload: $e');
//       setLoading(false);
//       Utils().toastMassage('Upload failed');
//     }
//     }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../../utils/app_constant.dart';
import '../../utils/appurls.dart';
import '../../utils/utils.dart';

class UpdateProfileProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  final picker = ImagePicker();
  File? _pickedFile;
  File? get pickedFile => _pickedFile;

  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  Future<void> getImageFromGallery() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      _pickedFile = File(pickedImage.path);
      notifyListeners();
    }
  }

  Future<void> updateProfile({
    required String id,
    required String name,
    required String email,
    required String phoneNo,
  }) async {
    setLoading(true);

    final url = Uri.parse("${AppUrl.baseUrl}admin/profile/$id");
    var request = http.MultipartRequest('PUT', url);

    try {
      if (_pickedFile != null) {
        var stream = http.ByteStream(_pickedFile!.openRead());
        var length = await _pickedFile!.length();
        var multipartFile = http.MultipartFile(
          'profilePicture',
          stream,
          length,
          filename: _pickedFile!.path.split('/').last,
        );
        request.files.add(multipartFile);
      }
    } catch (e) {
      print('Exception while adding image to request: $e');
      setLoading(false);
      Utils().toastMassage('Upload failed');
      return;
    }

    request.fields.addAll({
      'name': name.toString(),
      'email': email.toString(),
      'number': phoneNo.toString(),
    });

    request.headers['Authorization'] = 'Bearer ${AppConstants.userToken}';
    request.headers['Accept'] = 'application/json';

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        setLoading(false);
        Utils().toastMassage('Uploaded Successfully');
        // clearData();
        // Get.offAll(() => WelcomePageSeller());
      } else {
        setLoading(false);
        Utils().toastMassage('Upload failed with status code ${response.statusCode}');
      }
    } catch (e) {
      print('Exception during image upload: $e');
      setLoading(false);
      Utils().toastMassage('Upload failed');
    }
  }
}
