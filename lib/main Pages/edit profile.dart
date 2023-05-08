import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jicksaw/drawer.dart';

import 'package:sizer/sizer.dart';

import '../const widget.dart';


class EditProfile extends StatefulWidget {
  String? name;
  String? profile;
  String? email;
  String? lastmatch;
  String? age;
  String? pos;
  String? about;


  EditProfile(
      {super.key,
        this.name,
        this.profile,
        this.email,
        this.lastmatch,
        this.age,
        this.about,
        this.pos,
     });

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _user = TextEditingController(text: "");
  TextEditingController _age = TextEditingController(text: "");

  TextEditingController _email = TextEditingController(text: "");
  TextEditingController _about = TextEditingController(text: "");
  ImagePicker _picker = ImagePicker();
  ImagePicker _picker1 = ImagePicker();
  var imagesTemporary;
  File? imagefile;
  File? imagefile1;
  File? videofile;
  TextEditingController _lastmatch = TextEditingController(text: "");
  TextEditingController _pos = TextEditingController(text: "");
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = true;
  XFile? image;
  XFile? video;
  List<XFile>? _imageFileList;
  List<Path> images = [];
  int? select;
  String? it;
  bool isloading = true;
  Timer? timer;

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      drawer: drawer1(),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'Edit Profile',
                    style: primarytxt1,
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      // Container(
                      //   height: 15.h,
                      //   width: 30.w,
                      //   child: (imagefile != null)
                      //       ? Image.file(imagefile!, width: 300.0)
                      //       : Image.asset("assets/prof.jpg"),
                      // ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 15.h,
                        width: 30.w,
                        padding: EdgeInsets.all(1.w),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: (imagefile != null)
                                ? Image.file(
                              imagefile!,
                              width: 300.0,
                              fit: BoxFit.cover,
                            )
                                :CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                              widget.profile.toString(),
                              progressIndicatorBuilder:
                                  (context, url, progress) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Image.asset(
                                    'assets/user.png',
                                    color: Colors.white,
                                  ),
                            ),),
                      ),
                      Positioned(
                          top: 9.5.h,
                          left: 23.w,
                          child: InkWell(
                              onTap: () async {
                                final image = await _picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  imagefile = File(image!.path);
                                });
                              },
                              child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.camera_alt_outlined,
                                    color: primary,
                                  )))),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _user,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter the Name";
                      }
                      return null;
                    },
                    decoration: inputDecoration(
                      lable: "Full Name",
                      icon: Icon(Icons.person),
                    ),
                  ),

                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _age,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Give Age";
                      }
                      return null;
                    },
                    decoration:
                    inputDecoration(lable: "Age", icon: Icon(Icons.person_pin_circle_outlined,color: Colors.grey,)),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    maxLines: 5,
                    controller: _about,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter About Detials";
                      }
                      return null;
                    },
                    decoration: inputDecoration(
                        lable: "About", icon: Icon(Icons.info_outline_rounded,color: Colors.grey,)),
                  ),



                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () async {


                      },
                      child: Container(
                        padding: EdgeInsets.all(3.w),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Update Profile',
                          style: textStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle =
  TextStyle(color: Colors.white, fontSize: 12.sp, fontFamily: "Meta1");

  TextStyle textStyle1 = TextStyle(
      fontFamily: "Meta1",
      fontSize: 10.sp,
      color: Colors.grey,
      fontWeight: FontWeight.w400);

  InputDecoration inputDecoration({
    required String lable,
    required Icon icon,
  }) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.5.h),
      fillColor: bgcolor,
      hoverColor:bgcolor,
      focusColor: bgcolor,
      filled: true,
      errorStyle: TextStyle(
        color: Colors.red,
      ),
      // hintText: "jjhbf",
      label: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(lable),
      ),

      hintStyle: textStyle1,
      labelStyle:
      TextStyle(fontSize: 12.sp, fontFamily: "Meta1", color: Colors.grey),
      prefixIcon: icon,
      prefixIconColor: Colors.grey,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
    );
  }

  // name
  // experience
  // position
  // age
  // profile_image
  // images
  // videos

  // playerapi1() {
  //   final Map<String, String> data = {};
  //   data['action'] = 'view_profile_details';
  //   data['uid'] = userData?.userData?.uid ?? '';
  //
  //   checkInternet().then((internet) async {
  //     if (internet) {
  //       authprovider().profileapi(data).then((Response response) async {
  //         profiledata = ProfileModal.fromJson(json.decode(response.body));
  //
  //         if (response.statusCode == 200 && userData?.status == "success") {
  //           print(
  //               '========================================== I\'m Here ===========');
  //           setState(() {
  //             _about.text = profiledata?.viewProfileDetails?.about ?? '';
  //             isloading = false;
  //           });
  //
  //           await SaveDataLocal.saveLogInData(userData!);
  //           print(userData?.status);
  //           print(userData?.userData?.uid);
  //
  //           // buildErrorDialog(context, "", "Login Successfully");
  //         } else {
  //           setState(() {
  //             isloading = false;
  //           });
  //         }
  //       });
  //     } else {
  //       setState(() {
  //         isloading = false;
  //       });
  //       buildErrorDialog(context, 'Error', "Internate Required");
  //     }
  //   });
  // }
  //
  // playerapi() {
  //
  //   final Map<String, String> data = {};
  //   data['action'] = 'update_profile_app';
  //   data['uid'] = userData!.userData!.uid.toString();
  //   data['name'] = _user.text.trim();
  //   data['experience'] = _exp.text.trim();
  //   data['age'] = _age.text.trim();
  //   data['position'] = _pos.text.trim();
  //   data['about'] = _about.text.trim();
  //   data['profile_image'] = imagefile != null ? imagefile!.path : "";
  //   data['images[]'] = imagefile1 != null ? imagefile1!.path : "";
  //   data['video'] = videofile != null ? videofile?.path ?? '' : "";
  //
  //   checkInternet().then((internet) async {
  //     if (internet) {
  //       EasyLoading.show(status: 'Updating Profile ...');
  //       authprovider().updateprofileapi(data).then((Response response) async {
  //         profiledata = ProfileModal.fromJson(json.decode(response.body));
  //
  //         if (response.statusCode == 200 && profiledata?.status == "success") {
  //           EasyLoading.showSuccess(' Profile Updated Successfully!');
  //           SuccessDialog(context, 'Done', 'Profile Changed Successfully');
  //
  //           await SaveDataLocal.saveLogInData(userData!);
  //           print(userData?.status);
  //           print(userData!.userData!.uid);
  //
  //           // buildErrorDialog(context, "", "Login Successfully");
  //         } else {
  //           EasyLoading.showError(' Profile error!');
  //           setState(() {});
  //         }
  //       });
  //     } else {
  //       setState(() {});
  //       buildErrorDialog(context, 'Error', "Internate Required");
  //     }
  //   });
  // }
  //
  //
  // viddlt() {
  //   final Map<String, String> data = {};
  //   data['action'] = 'delete_video';
  //   data['uid'] = userData!.userData!.uid.toString();
  //
  //   checkInternet().then((internet) async {
  //     if (internet) {
  //       authprovider().delevideoapi(data).then((Response response) async {
  //         profiledata = ProfileModal.fromJson(json.decode(response.body));
  //
  //         if (response.statusCode == 200 && profiledata?.status == "success") {
  //           update();
  //           await SaveDataLocal.saveLogInData(userData!);
  //           print(userData?.status);
  //           print(userData!.userData!.uid);
  //
  //           // buildErrorDialog(context, "", "Login Successfully");
  //         } else {
  //           setState(() {});
  //         }
  //       });
  //     } else {
  //       setState(() {});
  //       buildErrorDialog(context, 'Error', "Internate Required");
  //     }
  //   });
  // }
  //
  // imgdlt() {
  //   final Map<String, String> data = {};
  //   data['action'] = 'delete_images';
  //   data['uid'] = userData!.userData!.uid.toString();
  //   data['image_name'] = it.toString();
  //
  //   checkInternet().then((internet) async {
  //     if (internet) {
  //       authprovider().deletephotoapi(data).then((Response response) async {
  //         profiledata = ProfileModal.fromJson(json.decode(response.body));
  //
  //         if (response.statusCode == 200 && profiledata?.status == "success") {
  //           update();
  //           await SaveDataLocal.saveLogInData(userData!);
  //           print(userData?.status);
  //           print(userData!.userData!.uid);
  //
  //           // buildErrorDialog(context, "", "Login Successfully");
  //         } else {
  //           setState(() {});
  //         }
  //       });
  //     } else {
  //       setState(() {});
  //       buildErrorDialog(context, 'Error', "Internate Required");
  //     }
  //   });
  // }
  //
  // update() {
  //   final Map<String, String> data = {};
  //   data['action'] = 'view_profile_details';
  //   data['uid'] = userData!.userData!.uid.toString();
  //
  //   checkInternet().then((internet) async {
  //     if (internet) {
  //       authprovider().profileapi(data).then((Response response) async {
  //         profiledata = ProfileModal.fromJson(json.decode(response.body));
  //
  //         if (response.statusCode == 200 && userData?.status == "success") {
  //           print('======================' +
  //               profiledata!.viewProfileDetails!.about!);
  //           setState(() {
  //             _about.text = profiledata!.viewProfileDetails!.about.toString();
  //           });
  //
  //           await SaveDataLocal.saveLogInData(userData!);
  //           print(userData?.status);
  //           print(userData!.userData!.uid);
  //
  //           // buildErrorDialog(context, "", "Login Successfully");
  //         } else {
  //           setState(() {});
  //         }
  //       });
  //     } else {
  //       setState(() {});
  //       buildErrorDialog(context, 'Error', "Internate Required");
  //     }
  //   });
  // }
}
