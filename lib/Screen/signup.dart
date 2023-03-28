import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/login.dart';
import 'package:sizer/sizer.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _user = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pasa = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _conf = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
            // color: Colors.black.withOpacity(0.7),
            image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8),
                  BlendMode.srcOver,
                ),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 10.w,
                      backgroundImage: AssetImage("assets/jigsaw.jpg")),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                    child: Text(
                  "Gigsaw Puzzle",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      fontFamily: "Orbitron"),
                )),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  padding: EdgeInsets.all(5.w),
                  margin: EdgeInsets.all(5.w),
                  height: 55.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _user,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the user name";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "User Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
                                "\\@" +
                                "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
                                "(" +
                                "\\." +
                                "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
                                ")+";
                            //Convert string p to a RegEx
                            RegExp regExp = RegExp(p);
                            if (value!.isEmpty) {
                              return "Please enter the Email";
                            } else {
                              //If email address matches pattern
                              if (regExp.hasMatch(value)) {
                                return null;
                              } else {
                                //If it doesn't match
                                return 'Email is not valid';
                              }
                            }
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          controller: _phone,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the phone number";
                            } else if (value.length <= 10) {
                              return "Please enter 1o digit number";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.phone,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "Phone number",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          controller: _pasa,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          controller: _conf,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the confirm password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey.shade100,
                              ),
                              hintText: " Confirm password",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 5.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.white)),
                            child: Text("Sign Up",
                                style: TextStyle(
                                    color: Colors.grey.shade100,
                                    fontFamily: "Orbitron",
                                    fontSize: 10.sp)),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Don't have an account ? ",style:TextStyle(color: Colors.grey.shade100,fontSize: 9.sp,fontFamily: "Orbitron",fontWeight: FontWeight.w400) ,),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login()));
                    },
                      child: Text("Already Member ?",style:TextStyle(color: Colors.white,fontSize: 10.sp,fontFamily: "Orbitron",fontWeight: FontWeight.w400) ),
                    )],
                )


              ],
            ),
          ),
        )
      ],
    ));
  }
}
