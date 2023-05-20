import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/main%20Pages/shoppage.dart';
import 'package:sizer/sizer.dart';

class rank extends StatefulWidget {
  const rank({Key? key}) : super(key: key);

  @override
  State<rank> createState() => _rankState();
}

class _rankState extends State<rank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
  Positioned(
    top: 1,
    bottom: 88.h,
    child: Row(
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
        'Ranking',
        style: primarytxt1,
      ),
    ],
),
  ),
          Positioned(
            top: 10.h,
            bottom: 0.h,
            left: 0,
            right: 0,
            child: Container(

              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Color(0xff1a8cfd),
              ),

              child:


              Stack(
                children: [
                  SizedBox(height: 4.h,),
                  Positioned(
                    top: 3.h,
                    left: 6.w,
                    child: Column(
                      children: [
                        Container(
                          height: 13.h,
                          width: 25.w,
                        child:  ClipOval(
                            child: Image.network(
                              'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                              width: 13
                                  .h, // set image width to match container width
                              height: 10
                                  .h, // set image height to match container height
                              fit: BoxFit
                                  .cover, // scale image to fill container
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          child: Text("john",
                            style: TextStyle(
                                fontFamily: 'game', fontSize: 15.sp,
                                color: Colors.black
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    left: 36.w,
                    child: Column(
                      children: [
                        Container(
                          height: 12.h,
                          width: 25.w,
                          child:  ClipOval(
                            child: Image.network(
                              'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                              width: 13
                                  .h, // set image width to match container width
                              height: 10
                                  .h, // set image height to match container height
                              fit: BoxFit
                                  .cover, // scale image to fill container
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                              shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          child: Text("john",
                            style: TextStyle(
                                fontFamily: 'game', fontSize: 15.sp,
                              color: Colors.black
                            ),
                          ),
                        )
                        ,
                      ],
                    ),
                  ),
                  Positioned(
                    top: 11.h,
                    left: 70.w,
                    child: Column(
                      children: [
                        Container(
                          height: 12.h,
                          width: 25.w,
                          child:  ClipOval(
                            child: Image.network(
                              'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                              width: 13
                                  .h, // set image width to match container width
                              height: 10
                                  .h, // set image height to match container height
                              fit: BoxFit
                                  .cover, // scale image to fill container
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                              shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          child: Text("john",
                            style: TextStyle(
                                fontFamily: 'game', fontSize: 15.sp,
                                color: Colors.black
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 30.h,
                          width: 25.w,
                          child: Text("1",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'game', fontSize: 25.sp
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          height: 20.h,
                          width: 25.w,
                          child: Text("2",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'game', fontSize: 25.sp
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          height: 15.h,
                          width: 25.w,
                          child: Text("3",
                          style: TextStyle(
                            color: Colors.white, fontFamily: 'game', fontSize: 25.sp
                          ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50.h,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                ),
                height: 70.h,
                child: ListView.builder(
                  itemCount: 5, // Replace with the actual count of your list
                  itemBuilder: (context, index) {
                    final serialNumber = index + 1;
                    // Build each item in the list dynamically
                    return Row(
                      children: [
                        SizedBox(width: 2.h,),
                        Container(
                          child: Text( '$serialNumber.',

                            style: TextStyle(  fontFamily: 'game', fontSize: 14.sp,
                            ),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 2.h, right: 2.h, top: 1.h),

                          child: Container(
                            height: 5.h,
                            width: 5.h,
                            child:   ClipOval(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                width: 5
                                    .h, // set image width to match container width
                                height: 5
                                    .h, // set image height to match container height
                                fit: BoxFit
                                    .cover, // scale image to fill container
                              ),
                            )
                          ),
                        ),
                       SizedBox(width: 4.w,),
                       Container(
                         child: Text("john",
                         style: TextStyle(
                           fontFamily: 'game', fontSize: 15.sp,
                           color: Colors.deepOrangeAccent
                         ),
                         ),
                       )
                        ,
                        SizedBox(width: 35.w,),
                        Container(
                          child: Column(
                            children: [
                              Text("score",
                                style: TextStyle(
                                    fontFamily: 'game', fontSize: 10.sp, color: Colors.grey
                                ),

                              ),
                              Text("1800",
                                style: TextStyle(
                                    fontFamily: 'game', fontSize: 15.sp
                                ),

                              ),

                            ],
                          ),
                        )
                      ],
                    );
                  },
                )
                ,

              ),
            ),
          ),
Positioned(
  bottom: 2.h,
  left: 3.h,
  right: 3.h,


  child:   Container(
alignment: Alignment.center,
    height: 6.h,

    width: 80.w,
child: Text(
  "Enter contest",
  style: TextStyle(
    color: Colors.black,
    fontFamily: 'game',
    fontSize: 15.sp
  ),
),
  decoration: BoxDecoration(
    color: Colors.deepOrangeAccent,
    borderRadius: BorderRadius.circular(30)
  ),

  ),
)
        ],
      )


    );
  }
}
