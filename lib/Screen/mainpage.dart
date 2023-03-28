import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/login.dart';
import 'package:sizer/sizer.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}
class Sachen {
  String? image;
  String? name;
  int? score;
  Sachen(this.image, this.name, this.score);
}

class _mainpageState extends State<mainpage> {
  List<String> data =["Previous","Ongoing","Eventual"];
  List<Sachen> past = [
    Sachen("https://media.istockphoto.com/id/1394747795/photo/symbol-of-teamwork-jigsaw-puzzle-connecting-cooperation-partnership-business-concept.jpg?s=1024x1024&w=is&k=20&c=VJvmzXwcQh3uUT7UgUxfFgjLeY6RTzgCg0cm_XsljaY=","26/3/2023",130),
    Sachen("https://media.istockphoto.com/id/1348186889/photo/last-step-to-complete-the-team-and-achieve-success.jpg?s=1024x1024&w=is&k=20&c=sqVCXMY0fFU-7hMT-3I-DdGsxq5qsXq-j91dWy1mfew=","26/3/2023",170),
    Sachen("https://media.istockphoto.com/id/1369593153/photo/red-missing-puzzle-piece-among-dark-ones.jpg?s=1024x1024&w=is&k=20&c=77CbSpqhZOtHgyWnOa93GOOKYZrh__QemUt7FIX6xO4=","26/3/2023",30),
    Sachen("https://media.istockphoto.com/id/1337044924/photo/the-characters-carry-a-piece-of-jigsaw-to-the-appropriate-gap.jpg?s=1024x1024&w=is&k=20&c=bd0-FrPXw4HMiSSo7_lkYuSmrqrbTcRc4iGon1k4_6E=","26/3/2023",230),
    Sachen("https://images.unsplash.com/photo-1612611741189-a9b9eb01d515?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80","26/3/2023",1530),
  ];
  int select=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome back !",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500,fontFamily: "Orbitron",fontSize: 10.sp,)),
                    Text("Anastya Carolina",style: TextStyle(color:Colors.grey.shade600,fontWeight: FontWeight.w400,fontFamily: "Orbitron",fontSize: 8.sp,)),
                  ],
                ),
                    CircleAvatar(
                      radius: 5.w,
                      backgroundImage: AssetImage(
                        "assets/profile.png"
                      ),
                    )
              ],
            ),
            SizedBox(height: 4.h,),
            Container(
              height: 4.h,
              // width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          select = index;
                        });
                      },
                      child: Container(
                        height: 4.h,
                        padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
                        margin: EdgeInsets.only(right: 3.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          color: (select == index) ? Colors.blue.shade200 :Colors.grey.shade400,
                        ),
                        child: Text(data[index].toString(),style: TextStyle(color:(select == index)?Colors.blue.shade800:Colors.black,fontWeight: FontWeight.w500,fontFamily: "Orbitron",fontSize: 10.sp),),
                      ),
                    );
                  }),
            ),





            SizedBox(height:3.h,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30.h,
                  // color: Colors.red,

                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: past.length,
                      itemBuilder: (context,index){
                    return Stack(
                      children: [
                        Container(
                          height: 27.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.only(right: 3.w),
                          child:ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(past[index].image.toString(),fit: BoxFit.cover,)) ,
                        ),
                        Positioned(
                            top:20.h,
                            left:0.w,
                            child:Container(
                              color: Colors.black12,
                              height: 5.h,
                              width: 50.w,
                              padding: EdgeInsets.symmetric(horizontal:3.w,vertical:8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Date : "+past[index].name.toString(),style: TextStyle(fontSize: 7.sp,fontFamily: "Orbitron",fontWeight: FontWeight.normal),),
                                  Text("Score : " +past[index].score.toString(),style: TextStyle(fontSize: 7.sp,fontFamily: "Orbitron",fontWeight: FontWeight.normal))
                                ],
                              ),
                            ) )
                      ],
                    );
                  }),
                )

          ],
        ),
      )
    );
  }
}
