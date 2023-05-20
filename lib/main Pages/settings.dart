import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(children: [
            SizedBox(height: 2.h,),
            Container(
              height: 10.h,
              alignment: Alignment.center,
              child:
                  // Icon(Icons.arrow_back),

                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mainpage2()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 3.h,
                      color: primary,
                    ),
                  ),
                  Text(
                    'Settings',
                     style: primarytxt1,
                        // TextStyle(
                        //   // fontWeight: FontWeight.bold, fontSize: 13.sp, color:Colors.deepOrangeAccent,
                        //
                        // ),
                  ),
                  Text(''),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              margin: EdgeInsets.only(left: 8.w),
              alignment: Alignment.centerLeft,
              child: Text(
                "General Settings",
                // style: primarytxt1,
                style: TextStyle(   color: primary,
                  fontSize: 15.sp,
                  fontFamily: 'game',
                  letterSpacing: 2,),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              color: Colors.white,
              child: SizedBox(
                height: 30.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                          child: Row(
                        children: [
                          CircleAvatar(

                            radius: 4.h,
                            backgroundImage: NetworkImage(
                                "https://unsplash.com/photos/t3zrEm88ehc",

                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text('John Doe',
                            style: TextStyle( color: Colors.black,
                            fontSize: 15.sp,
                            fontFamily: 'game',
                            letterSpacing: 2,),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Change Password',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',


                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              color: Colors.white,
              child: SizedBox(
                height: 35.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                          child: Row(
                        children: [
                          Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: 'game',
                              letterSpacing: 2,
                            color: primary
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of Service',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date Policy',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Help/FAQ',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact us',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'game',

                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
