import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../../Utils/app_constant.dart';
import '../../utils/appurls.dart';
import '../../utils/utils.dart';
import 'dart:io';


class PostAddProductProvider extends ChangeNotifier {


  bool _loading = false;
  final picker = ImagePicker();
  final List<XFile> _pickedFiles = [];
  List<XFile> get pickedFiles => _pickedFiles;

  bool get loading => _loading;
  setLoading(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  void getImageGallery() async {
    final List<XFile> selectedImages = await
    picker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      _pickedFiles.addAll(selectedImages);
      notifyListeners();
    }
    if (kDebugMode) {
      print("Image List Length:${_pickedFiles.length.toString()}");
    }
    notifyListeners();
    }

  Future<void> postAddProduct({
   required bool delivery ,
    required String name,
    required String description,
    required String price,
    required String deliveryCharges,
    required String stock,
    required String category,
  }) async {
    setLoading(true);
    var request = http.MultipartRequest('POST',
      Uri.parse(AppUrl.baseUrl + AppUrl.postAddProduct),
    );
    try {
      for (int i = 0; i < _pickedFiles.length; i++) {
        XFile image = _pickedFiles[i];
        var file = File(image.path);
        if (!file.existsSync()) {
          if (kDebugMode) {
            print('File does not exist: ${file.path}');
          }
          return;
        }
        var stream = http.ByteStream(Stream.castFrom(file.openRead()));
        var length = await file.length();
        if (kDebugMode) {
          print("Image path: ${file.path}");
        }
        var multipartFile = http.MultipartFile(
          'photos', // Use `photos[]` to indicate multiple photos
          stream,
          length,
          filename: file.path.split('/').last,
        );
        request.files.add(multipartFile);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception while adding image to request: $e');
      }
      return;
    }
    request.fields.addAll({
      'name': name.toString(),
      'description': description.toString(),
      'price': price.toString(),
      'deliveryCharges': deliveryCharges.toString(),
      'freeDelivery': delivery.toString(),
      'stock': stock.toString(),
      'category': category.toString(),
    });
    request.headers['Authorization'] = 'Bearer ${AppConstants.userToken}';
    request.headers['Content-Type'] = 'application/json';
    try {
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 201) {
        if (kDebugMode) {
          print("update profile$response");
          print("update profile${request.fields}");
        }
        setLoading(false);
        Utils().toastMassage('Uploaded Successfully');
      } else {
        setLoading(false);
        Utils().toastMassage(
          'Upload failed with status code ${response.statusCode}',
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print('Exception during image upload: $e');
      }
      setLoading(false);
      Utils().toastMassage('Upload failed');
    }
  }




  // Future<http.MultipartFile> createMultipartFile(File imageFile) async {
  //   String fileName = imageFile.path.split('/').last;
  //   http.MultipartFile multipartFile = await http.MultipartFile.fromPath(
  //     'photos',
  //     imageFile.path,
  //     filename: fileName,
  //   );
  //   return multipartFile;
  // }
  // Future<void> uploadImage(File imageFile) async {
  //   if (imageFile != null) {
  //     http.MultipartFile multipartFile = await createMultipartFile(imageFile);
  //
  //     // Add additional headers or parameters if required
  //     Map<String, String> headers = {
  //       'Content-Type': 'multipart/form-data',
  //     };
  //     Map<String, String> fields = {
  //       'fieldName': 'fieldValue',
  //     };
  //
  //     var request = http.MultipartRequest('POST', Uri.parse('your_upload_url'));
  //     request.headers.addAll(headers);
  //     request.fields.addAll(fields);
  //     request.files.add(multipartFile);
  //
  //     var response = await request.send();
  //     if (response.statusCode == 200) {
  //       // File uploaded successfully
  //       print('Image uploaded');
  //     } else {
  //       // Handle upload failure
  //       print('Failed to upload image');
  //     }
  //   }
  // }

}
//
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import '../../Utils/app_constant.dart';
// import '../../utils/appurls.dart';
// import '../../utils/utils.dart';
//
// class PostAddProductProvider extends ChangeNotifier {
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
//
//   Future<void> postAddProduct({
//     required String name,
//     required String description,
//     required String price,
//     required String deliveryCharges,
//     required bool freeDelivery,
//     required String stock,
//     required String category,
//
//
//   }) async {
//     setLoading(true);
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse(AppUrl.baseUrl + AppUrl.postAddProduct),
//     );
//     var image = _pickedFile; // Assuming _imageFile represents a single image file
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
//         'photos',
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
//       'description': description.toString(),
//       'price': price.toString(),
//       'deliveryCharges': deliveryCharges.toString(),
//       'freeDelivery': freeDelivery.toString(), // Convert boolean to string
//       'stock': stock.toString(),
//       'category': category.toString(),
//     });
//
//     request.headers['Authorization'] = 'Bearer ${AppConstants.userToken}';
//     request.headers['Content-Type'] = 'application/json';
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
//
//
// }
