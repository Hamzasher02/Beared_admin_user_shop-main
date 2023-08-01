// import 'dart:io';
// import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// import 'package:better_horizons_daily/Providers/ServiceProvider/serviceEditProfile_provider.dart';
// import 'package:better_horizons_daily/Screens/Buyer_Panel/Profile_Screen/components/c_textfield.dart';
// import 'package:better_horizons_daily/Utils/app_images.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:google_api_headers/google_api_headers.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:provider/provider.dart';
// import '../../../Models/userProfileModel.dart';
// import '../../../Providers/editprofile_Provider.dart';
// import '../../../Providers/userProfile_provider.dart';
// import '../../../Utils/app_colors.dart';
// import '../../../Utils/appurls.dart';
// import '../../../Widgets/buildText.dart';
// import '../../../Widgets/h1_text.dart';
// import '../../../Widgets/text_normal.dart';
//
// class EditProfileScreen extends StatefulWidget {
//   UserProfileModel providerProfileModel;
//
//   EditProfileScreen({Key? key, required this.providerProfileModel})
//       : super(key: key);
//
//   @override
//   State<EditProfileScreen> createState() =>
//       _EditProfileScreenState();
// }
//
// const kGoogleApiKey = 'AIzaSyB1f_lwsIq8N0IyMoPgAZpZJZSfy1d77VQ';
// final homeScaffoldKey = GlobalKey<ScaffoldState>();
//
// class _EditProfileScreenState extends State<EditProfileScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   // bool loading = false;
//   bool load = false;
//   File? imageFile;
//
//
//   Position? _currentPosition;
//   String? _currentAddress;
//   String? _currentLocality;
//   String? _currentCountry;
//   String? _currentState;
//   String? _currentCity;
//   String? _currentPostelCode;
//
//   ///
//   static const CameraPosition initialCameraPosition = CameraPosition(
//       target: LatLng(33.65259538330658, 73.08197215065543),
//       zoom: 14.0,
//       bearing: 100);
//
//   Set<Marker> markersList = {};
//
//   late GoogleMapController googleMapController;
//
//   final Mode _mode = Mode.overlay;
//
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController stateController =
//     TextEditingController(text: _currentState);
//     TextEditingController addressController =
//     TextEditingController(text: '${_currentCountry}' + ',${_currentState}');
//     TextEditingController cityController =
//     TextEditingController(text: _currentCity);
//     TextEditingController countryController =
//     TextEditingController(text: _currentCountry);
//     TextEditingController postelCodeController =
//     TextEditingController(text: _currentPostelCode);
//     TextEditingController userNameController =
//     TextEditingController(text: widget.providerProfileModel.data!.name!);
//     TextEditingController emailController =
//     TextEditingController(text: widget.providerProfileModel.data!.email!);
//     TextEditingController phoneNoController = TextEditingController(
//         text: widget.providerProfileModel.data!.mobileno!);
//     TextEditingController dobController = TextEditingController(
//         text: widget.providerProfileModel.data!.profile == null
//             ? ''
//             : widget.providerProfileModel.data!.profile!.dob);
//
//     ImageProvider? _backgroundImage;
//     return Scaffold(
//       body: Consumer<EditProfileProvider>(
//         builder: (context, editProfileProvider, child) {
//           if (editProfileProvider.pickedFile != null) {
//             _backgroundImage =
//                 FileImage(File(editProfileProvider.pickedFile!.path));
//           } else {
//             _backgroundImage = NetworkImage(
//                 widget.providerProfileModel.data?.profile == null
//                     ? AppImages.l1
//                     : AppUrl.userprofileImage +
//                     widget.providerProfileModel.data!.profile!.image
//                         .toString());
//           }
//           return Stack(children: [
//             Container(
//               alignment: Alignment.topCenter,
//               padding: EdgeInsets.only(top: 45.h, left: 20),
//               height: double.infinity,
//               width: double.infinity,
//               color: AppColors.mainColor,
//               child: Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: Container(
//                         height: 30.h,
//                         width: 50.w,
//                         decoration: BoxDecoration(
//                             color: Colors.black38.withOpacity(0.2),
//                             borderRadius:
//                             BorderRadius.all(Radius.circular(70.r))),
//                         child: const Icon(Icons.arrow_back_outlined,
//                             color: Colors.white)),
//                   ),
//                   SizedBox(
//                     width: 100.w,
//                   ),
//                   const H1Text(text: "Profile", color: Colors.black),
//                   const Spacer()
//                 ],
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(top: 181.h),
//                 child: Container(
//                     height: 631.h,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(30.r)),
//                       color: Colors.white,
//                     ),
//                     child: SingleChildScrollView(
//                       physics: const BouncingScrollPhysics(),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 25.w, vertical: 15.h),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 height: 40.h,
//                               ),
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: BuildText(
//                                   title: widget.providerProfileModel.data!.name
//                                       .toString(),
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 53.h,
//                               ),
//                               CTextField(
//                                   readonly: false,
//                                   upHint: "Username",
//                                   controller: userNameController,
//                                   keyboard: TextInputType.text),
//                               CTextField(
//                                   readonly: true,
//                                   upHint: "Email ID",
//                                   controller: emailController,
//                                   keyboard: TextInputType.text),
//                               CTextField(
//                                   readonly: false,
//                                   upHint: "Phone Number",
//                                   controller: phoneNoController,
//                                   keyboard: TextInputType.text),
//                               CTextField(
//                                   readonly: false,
//                                   upHint: "Date of Brith",
//                                   controller: dobController,
//                                   keyboard: TextInputType.text),
//                               SizedBox(height: 10.h),
//                               Align(
//                                 alignment: Alignment.topLeft,
//                                 child: BuildText(
//                                   title: "Address",
//                                   color: Colors.black,
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                               SizedBox(height: 15.h),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const TextNormal(
//                                       txt: 'Address', color: Colors.black38),
//                                   const SizedBox(height: 5),
//                                   GestureDetector(
//                                     onTap: _handlePressButton,
//                                     child: Container(
//                                       height: 40,
//                                       width: double.infinity,
//                                       decoration: BoxDecoration(
//                                           border:
//                                           Border.all(color: Colors.black26),
//                                           borderRadius:
//                                           BorderRadius.circular(6)),
//                                       child: const Padding(
//                                         padding: EdgeInsets.all(8.0),
//                                         child: Text('data'),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               SizedBox(height: 15.h),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           CTextField(
//                                               readonly: false,
//                                               upHint: "Country",
//                                               controller: countryController,
//                                               keyboard: TextInputType.text),
//                                         ],
//                                       )),
//                                   const SizedBox(width: 15),
//                                   Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           CTextField(
//                                               readonly: false,
//                                               upHint: "State",
//                                               controller: stateController,
//                                               keyboard: TextInputType.text),
//                                         ],
//                                       )),
//                                 ],
//                               ),
//                               SizedBox(height: 15.h),
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           CTextField(
//                                               readonly: false,
//                                               upHint: "City",
//                                               controller: cityController,
//                                               keyboard: TextInputType.text),
//                                         ],
//                                       )),
//                                   const SizedBox(width: 15),
//                                   Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           CTextField(
//                                               readonly: false,
//                                               upHint: "Postel Code",
//                                               controller: postelCodeController,
//                                               keyboard: TextInputType.text),
//                                         ],
//                                       )),
//                                 ],
//                               ),
//                               SizedBox(height: 30.h),
//                               Consumer<UserProfileProvider>(
//                                 builder: (context, profileProvider, child) {
//                                   return GestureDetector(
//                                     onTap: () {
//                                       editProfileProvider
//                                           .updateProfile(
//                                         // image: '${widget.providerProfileModel.data?.profile!.image}',
//                                         email:
//                                         emailController.text.toString(),
//                                         address: addressController.text
//                                             .toString(),
//                                         city:
//                                         cityController.text.toString(),
//                                         country: countryController.text
//                                             .toString(),
//                                         dob: dobController.text.toString(),
//                                         name: userNameController.text
//                                             .toString(),
//                                         phoneNo: phoneNoController.text
//                                             .toString(),
//                                         postelCode: postelCodeController
//                                             .text
//                                             .toString(),
//                                         state:
//                                         stateController.text.toString(),
//                                       )
//                                           .then((value) =>
//                                       {profileProvider.getUserProfile()})
//                                           .then((value) => {Get.back()});
//                                     },
//                                     child: Container(
//                                       height: 50.h,
//                                       width: 335.w,
//                                       decoration: BoxDecoration(
//                                           color: AppColors.mainColor,
//                                           borderRadius:
//                                           BorderRadius.circular(5.r)),
//                                       child: Center(
//                                         child: BuildText(
//                                           title: "Update",
//                                           fontSize: 14.sp,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ]),
//                       ),
//                     ))),
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 133.w,
//                 top: 113.h,
//               ),
//               child: InkWell(
//                 onTap: () {
//                   editProfileProvider.getImageFromGallery();
//                 },
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.white,
//                         Colors.white,
//                         Colors.red,
//                       ],
//                     ),
//                     borderRadius: BorderRadius.circular(90),
//                   ),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(90),
//                       child: SizedBox(
//                         height: 110.h,
//                         width: 110.w,
//                         child: CircleAvatar(
//                           backgroundImage: _backgroundImage,
//                           child: editProfileProvider.pickedFile == null
//                               ? Container(
//                             margin: const EdgeInsets.all(25),
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                   width: 2, color: Colors.white),
//                               shape: BoxShape.circle,
//                             ),
//                             child: const Icon(Icons.camera_alt,
//                                 color: Colors.white),
//                           )
//                               : null,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ]);
//         },
//       ),
//     );
//   }
// }