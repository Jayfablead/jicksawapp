import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Modal/editmodal.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/profile/porfilePage.dart';

import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class EditProfile extends StatefulWidget {
  String? name;
  String? profile;
  String? email;
  String? lastmatch;
  String? age;
  String? pos;
  String? about;
  EditProfile({
    super.key,
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = true;
  XFile? image;
  XFile? video;
  List<XFile>? _imageFileList;
  int? select;
  String? it;
  bool isloading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
  }
  @override
  Widget build(BuildContext context) {
    return commanScreen(isLoading: isLoading,
      scaffold: Scaffold(
        backgroundColor: bgcolor
        // Colors.black
        ,
        key: _scaffoldKey,
        body:isLoading?Container(): SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),

                SizedBox(
                  height: 7.h,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
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
                                : CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: profileviewmodal
                                            ?.profileViewPlayer?.profilePic ??
                                        '',
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                      'assets/user.png',
                                      color: Colors.black,
                                    ),
                                  ),
                          ),
                        ),
                        Positioned(
                            top: 9.5.h,
                            left: 21.w,
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
                                        color:
                                            // bgcolor
                                            Colors.black,
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
                    Container(
                      padding: EdgeInsets.all(3.w),
                      margin: EdgeInsets.all(3.w),
                      // height: .h,
                      width: 99.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: primary)),
                      child: Form(
                        child: Column(
                          children: [
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7.h,
                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(

                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 12.sp),
                                controller: _user,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter the user name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(errorBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "Full Name",
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 11.sp)),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7.h,
                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 12.sp),
                                controller: _age,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter the age";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  errorBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.transparent),
                                  ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.person_pin_circle_outlined,
                                      color: Colors.black,
                                    ),
                                    hintText: "Age",
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 11.sp)),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),

                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 12.sp),
                                controller: _about,
                                keyboardType: TextInputType.text,
                                maxLines: 5,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter About Detials";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  errorBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.transparent),
                                  ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.info_outline_rounded,
                                      color: Colors.black,
                                    ),
                                    hintText: "About",
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 11.sp)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () async {
                          print('zoro');
                          editap();
                        },
                        child: Container(
                          height: 5.5.h,
                          width: 45.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            'Update Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
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
      ),
    );
  }
  TextStyle textStyle =
      TextStyle(color: Colors.black, fontSize: 12.sp, fontFamily: "Meta1");
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
      fillColor: Colors.grey.shade200,
      hoverColor: bgcolor,
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
  editap() {
    final Map<String, String> data = {};
    data['uid'] = usermodal?.userData?.uid ?? '';
    data['username'] = _user.text.trim().toString();
    data['age'] = _age.text.trim().toString();
    data['about'] = _about.text.trim().toString();
    data['img_file'] = imagefile == null?'': imagefile!.path ;
    data['action'] = 'profile_update_player';
    print(data);
    checkInternet().then((internet) async {
      print('hello');
      if (internet) {
        authprovider().profileupdateapi(data).then((response) async {
          edit = editModal.fromJson(json.decode(response.body));
          print(response.body);
          print(response.statusCode);
          print(edit?.status);
          if (response.statusCode == 200 && edit?.status == "success") {
            update(context, 'Success', "Profile Updated Successfully",
                callback:(){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile()));
              Get.offAll(MyProfile());
                }
            );
            setState(() {
               isLoading = false;
            });
          } else {
            buildErrorDialog(
                context, 'Field Error', (usermodal?.message).toString());
          }
        });
      } else {
        setState(() {
           isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }
  viewap() {
    final Map<String, String> data = {};

    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'profile_view_player';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().profileviewapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            print(profileviewmodal?.profileViewPlayer?.profilePic);
            print(profileviewmodal?.profileViewPlayer?.name);
            print(profileviewmodal?.profileViewPlayer?.age);
            print(profileviewmodal?.profileViewPlayer?.about);
            setState(() {
              _user.text =
                  (profileviewmodal?.profileViewPlayer?.name).toString();
              _age.text = profileviewmodal?.profileViewPlayer?.age ?? "";
              _about.text = profileviewmodal?.profileViewPlayer?.about ?? "";

               isLoading = false;
            });
          } else {isLoading = false;}
        });
      } else {
        setState(() {
           isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }
}
