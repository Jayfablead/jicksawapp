import 'package:flutter/material.dart';
import 'package:jicksaw/main%20Pages/subscription_page.dart';

import 'package:sizer/sizer.dart';

class subscribe_plan extends StatefulWidget {
  const subscribe_plan({Key? key}) : super(key: key);

  @override
  State<subscribe_plan> createState() => _subscribe_planState();
}

class _subscribe_planState extends State<subscribe_plan> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: 0.h,
          child: Container(
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.10),
                //     blurRadius: 10,
                //     offset: Offset(0, 5),
                //   ),
                // ],
                ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                child: Image.network(
                    "https://media.istockphoto.com/id/1302382693/photo/woman-choosing-subscription-plan.jpg?b=1&s=170667a&w=0&k=20&c=xj4iIV6iDqze5As9s0B5XS5wWsd97WzyrLx9XtF7Zgo="),
              ),
            ),
          ),
        ),
        Positioned(
          top: 25.h,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose your plan",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold,
                            fontFamily: 'game'
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => subscription()),
                          );
                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Container(
                        height: 20.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _selectedValue == 1
                                    ? Colors.deepOrangeAccent
                                    : Colors.grey,
                                width: 2.sp),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "MONTHLY",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp,
                                        fontFamily: 'game'
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedValue,
                                    activeColor: Colors.deepOrangeAccent,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$17.99/month",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: 'game'
                                    ),
                                  ),

                                  // // // Radio(
                                  // // //   value: 1,
                                  // // //   groupValue: _selectedValue,
                                  // // //   onChanged: (value) {
                                  // // //     setState(() {
                                  // // //       _selectedValue = value!;
                                  // // //     });
                                  // //   },
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffeefbf5)),
                                    child: Text(
                                      "1 week free trial",
                                      style:
                                          TextStyle(color: Color(0xffa0e1c1),

                                              fontFamily: 'game'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,

                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(20),
                                    //     color: Color(0xffeefbf5)
                                    // ),
                                    child: Text(
                                      "then \$17.99 per month. Cancel anytime",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.sp,
                                          fontFamily: 'game'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 20.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _selectedValue == 1
                                    ? Colors.grey
                                    : Colors.deepOrangeAccent,
                                width: 2.sp),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "MONTHLY",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp,
                                        fontFamily: 'game'
                                    ),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _selectedValue,
                                   activeColor: Colors.deepOrangeAccent,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$17.99/month",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: 'game'
                                    ),
                                  ),

                                  // // // Radio(
                                  // // //   value: 1,
                                  // // //   groupValue: _selectedValue,
                                  // // //   onChanged: (value) {
                                  // // //     setState(() {
                                  // // //       _selectedValue = value!;
                                  // // //     });
                                  // //   },
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffeefbf5)),
                                    child: Text(
                                      "1 week free trial",
                                      style:
                                          TextStyle(color: Color(0xffa0e1c1),
                                              fontFamily: 'game'
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,

                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(20),
                                    //     color: Color(0xffeefbf5)
                                    // ),
                                    child: Text(
                                      "then \$17.99 per month. Cancel anytime",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.sp,
                                          fontFamily: 'game'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Container(
                        alignment: Alignment.center,
                        height: 6.h,
                        width: 80.w,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.deepOrangeAccent
                        ),
                        child: Text("Continue to Checkout",
                          style: TextStyle(color: Colors.black, fontSize: 12.sp,
                              fontFamily: 'game'
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]
      ),
    );
  }
}