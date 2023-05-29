import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/main%20Pages/subscribe_plan.dart';

import 'package:sizer/sizer.dart';

class subscription extends StatefulWidget {
  const subscription({Key? key}) : super(key: key);

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 3.h,),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mainpage2()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: primary,
                  )),
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Subscribe',
                style: primarytxt1,
              ),
            ],
          ),
          SizedBox(height: 2.h,),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network("https://media.istockphoto.com/id/1302382693/photo/woman-choosing-subscription-plan.jpg?b=1&s=170667a&w=0&k=20&c=xj4iIV6iDqze5As9s0B5XS5wWsd97WzyrLx9XtF7Zgo="),
            ),
          ),

          SizedBox(
            height: 2.h,
          ),

          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: 3,
          //
          //   itemBuilder: (BuildContext context, int index) {
          //     return Column(
          //       children: [
          //
          //         Padding(
          //           padding:  EdgeInsets.symmetric(horizontal: 8.h),
          //           child: Container(
          //             width: 100.w,
          //             child: Column(
          //               children: [
          //                 Container(
          //                   child: Text("Watch Premium Content",
          //                     style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          //                   ),
          //                 ),
          //
          //                 SizedBox(height: 1.h,),
          //                 Container(
          //
          //
          //                   child: Text("You will get access on all our platforms. Explore and watch videos on your phone.",
          //                     style: TextStyle(fontSize: 14.sp, color: Colors.grey),
          //                     textAlign: TextAlign.center,
          //                   ),
          //                 ),
          //
          //
          //
          //
          //
          //                 // ListView.builder(
          //                 // scrollDirection: Axis.horizontal,
          //                 // itemCount: 3,
          //                 // itemBuilder: (BuildContext context, int index) =>
          //                 // Container(
          //                 //   child: Text("kfjvdkj"),
          //                 //
          //                 // ))
          //               ],
          //             ),
          //           ),
          //         )
          //       ],
          //     );
          //   },
          // ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 2.h),
            child: Container(

              child: Column(
                children: [
                  Container(
                    child: Text("Watch Premium Content",
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,
                         fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  SizedBox(height: 1.h,),
                  Container(


                    child: Text("You will get access on all our platforms. Explore and watch videos on your phone. You will get access on all our platforms. Explore and watch videos on your phone.",
                      // style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      style: appname,
                      textAlign: TextAlign.center,
                    ),
                  ),





                  // ListView.builder(
    // scrollDirection: Axis.horizontal,
    // itemCount: 3,
    // itemBuilder: (BuildContext context, int index) =>
    // Container(
    //   child: Text("kfjvdkj"),
    //
    // ))
                ],
              ),
            ),
          ),
SizedBox(height: 10.h,),
          Container(
            child: Text('Starting at \$ 17.99/month',

              style: TextStyle(fontSize: 12.sp,fontFamily: 'Poppins', fontWeight: FontWeight.w200),
            ),
          ),

          SizedBox(height: 2.h,),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => subscribe_plan()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 6.h,
              width: 80.w,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: primary
              ),
              child: Text("Choose your plan",
              style: TextStyle(color: Colors.black, fontSize: 12.sp, fontFamily: 'Poppins',),
              ),
                        ),
          ),
          SizedBox(height: 2.h,),
          Container(
            child: Text(
              "Subscribed already?",
              style: TextStyle(fontSize: 12.sp, color: Colors.black, fontFamily: 'Poppins',),
            ),
          )
        ],
      ),



    );
  }
}
