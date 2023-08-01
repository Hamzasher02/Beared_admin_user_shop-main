import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Providers/ProfileProvider/update_profile_provider.dart';
import '../../../Utils/app_constant.dart';
import '../../../utils/colors.dart';
import '../../../utils/utils.dart';
import '../profile.dart';
import 'update_profile_model.dart';

class EditProfile extends StatefulWidget {
  UpdateProfileModel? updateProfileModel;

  EditProfile({Key? key, this.updateProfileModel})
      : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool load = false;

  File? imageFile;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ImageProvider? _backgroundImage;
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Consumer<UpdateProfileProvider>(
              builder: (context, updateProvider, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                  height: 68.h,
                ),
                InkWell(
                onTap: () {
                Get.back();
                },
                child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: iconwhite,
                size: 20.sp,
                )),
                SizedBox(
                height: 36.h,
                ),
                Text(
                "Edit Profile",
                style: TextStyle(
                fontSize: 24.sp,
                color: textwhite.withOpacity(.87),
                fontWeight: FontWeight.w700,
                fontFamily: "Nunito"),
                ),
                SizedBox(
                height: 5.h,
                ),
                Text(
                "Update Your Profile",
                style: TextStyle(
                fontSize: 16.sp,
                color: textwhite.withOpacity(.38),
                fontWeight: FontWeight.w500,
                fontFamily: "Nunito"),
                ),
                SizedBox(
                height: 40.h,
                ),
                Container(
                height: 249.h,
                width: 378.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: containerbg),
                child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Stack(
                children: [
                Column(
                children: [
                Align(
                alignment: Alignment.centerLeft,
                child: Text(
                "Profile Picture",
                style: TextStyle(
                fontSize: 18.sp,
                color: textwhite.withOpacity(.60),
                fontWeight: FontWeight.w500,
                fontFamily: "Nunito"),
                ),
                ),
                SizedBox(
                height: 20.h,
                ),
                Container(
                height: 100.h,
                width: 100.h,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.r),
                border: Border.all(
                width: 1,
                color: textwhite.withOpacity(.38)),
                ),
                child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: updateProvider.pickedFile != null
                ? Image.file(
                File(updateProvider.pickedFile!.path),
                fit: BoxFit.cover,
                )
                    : Container(),
                ),
                ),
                SizedBox(
                height: 20.h,
                ),
                Text(
                "Tap to Add your Profile\nPicture",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 16.sp,
                color: textwhite.withOpacity(.38),
                fontWeight: FontWeight.w500,
                fontFamily: "Nunito"),
                ),
                ],
                ),
                InkWell(
                onTap: (){
                updateProvider.getImageFromGallery();
                },
                child: Padding(
                padding: EdgeInsets.only(left: 188.w, top: 110.h),
                child: Container(
                height: 27.h,
                width: 27.h,
                decoration: BoxDecoration(
                color: textwhite,
                borderRadius: BorderRadius.circular(50.r)),
                child: Center(
                child: Icon(
                Icons.camera_alt_rounded,
                color: containerbg,
                size: 15.sp,
                ),
                ),
                ),
                ),
                ),
                ],
                ),
                ),
                ),
                SizedBox(height: 30.h
                ),
                Text(
                "Personal Info",
                style: TextStyle(
                fontSize: 18.sp,
                color: textwhite.withOpacity(.60),
                fontWeight: FontWeight.w500,
                fontFamily: "Nunito"),
                ),
                SizedBox(
                height: 20.h
                ),
                Container(
                height: 60.h,
                width: 378.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: containerbg),
                child: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: nameController,
                decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.person,
                color: textwhite.withOpacity(.38),
                ),
                hintText: "Andre Genze",
                border: InputBorder.none,
                hintStyle: TextStyle(
                fontSize: 16.sp,
                color: textwhite.withOpacity(.38),
                ),
                ),
                style: TextStyle(
                color: textwhite.withOpacity(.38),
                fontFamily: 'Montserrat',
                fontSize: 14.sp),

                ),
                ),
                ),
                SizedBox(
                height: 20.h
                ),
                Container(
                height: 60.h,
                width: 378.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: containerbg),
                child: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.email_outlined,
                color: textwhite.withOpacity(.38),
                ),
                hintText: "Email Address",
                border: InputBorder.none,
                hintStyle: TextStyle(
                fontSize: 16.sp,
                color: textwhite.withOpacity(.38),
                ),
                ),
                style: TextStyle(
                color: textwhite.withOpacity(.38),
                fontFamily: 'Montserrat',
                fontSize: 14.sp),

                ),
                ),
                ),
                SizedBox(
                height: 20.h
                ),
                Container(
                height: 60.h,
                width: 378.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: containerbg),
                child: Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: phoneController,
                decoration: InputDecoration(
                prefixIcon: Icon(
                Icons.phone,
                color: textwhite.withOpacity(.38),
                ),
                hintText: "Phone Number",
                border: InputBorder.none,
                hintStyle: TextStyle(
                fontSize: 16.sp,
                color: textwhite.withOpacity(.38),
                ),
                ),
                style: TextStyle(
                color: textwhite.withOpacity(.38),
                fontFamily: 'Montserrat',
                fontSize: 14.sp),

                ),
                ),
                ),
                SizedBox(
                height: 60.h
                ),
                // InkWell(
                // onTap: ()async{
                //   print("profileid ${AppConstants.saveUserID.toString()}");
                // final prefs = await SharedPreferences.getInstance();
                // if (_formKey.currentState!.validate()) {
                // updateProvider.updateProfile(
                // id: prefs.getString(AppConstants.saveUserID).toString(),
                // name: nameController.text.toString(),
                // email: emailController.text.toString(),
                // phoneNo: phoneController.text.toString(),
                // );
                // Get.to(const AdminProfile());
                // }
                // },
                // child: Container(
                // height: 60.h,
                // width: 378.w,
                // decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.r),
                // color: btnbgpurple),
                // child: Center(
                // child: Text(
                // "Update",
                // style: TextStyle(
                // fontSize: 18.sp,
                // color: textwhite.withOpacity(.87),
                // fontWeight: FontWeight.w600,
                // fontFamily: "Nunito"),
                // ),
                // ),
                // ),
                // ),
                    InkWell(
                      onTap: () async {
                        final prefs = await SharedPreferences.getInstance();
                        if (_formKey.currentState!.validate()) {
                          try {
                            updateProvider.setLoading(true); // Show loading indicator

                            await updateProvider.updateProfile(
                              id: prefs.getString(AppConstants.saveUserID).toString(),
                              name: nameController.text.toString(),
                              email: emailController.text.toString(),
                              phoneNo: phoneController.text.toString(),
                            );
                            Navigator.pop(context);
                          } catch (error) {
                            // Handle error
                            print("Error updating profile: $error");
                            Utils().toastMassage('Failed to update profile');
                          } finally {
                            updateProvider.setLoading(false); // Hide loading indicator
                          }
                        }
                      },
                      child: Container(
                        height: 60.h,
                        width: 378.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: btnbgpurple,
                        ),
                        child: Center(
                          child: updateProvider.loading
                              ? CircularProgressIndicator() // Show loading indicator
                              : Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: textwhite.withOpacity(.87),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
