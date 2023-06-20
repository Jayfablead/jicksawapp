import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Categ extends StatefulWidget {
  const Categ({super.key});

  @override
  State<Categ> createState() => _CategState();
}

class game {
  String? image;
  String? name;
  Color? clr;
  String? star;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr);
}

List<game> popular = [
  game("assets/math.png", "Math", Colors.deepPurple.withOpacity(0.5), 'You will Get Questions based on Maths',
      Colors.deepPurple),
  game("assets/memory.png", "Memory", Colors.tealAccent.withOpacity(0.5), 'You will Get Questions based on Memory',
      Colors.tealAccent),
  game("assets/trivia.png", "Trivia", Colors.deepOrangeAccent.withOpacity(0.5),
      'You will Get Random Questions ', Colors.deepOrangeAccent),
];

class _CategState extends State<Categ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 9.h,
            ),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 22.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 80.h,
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: ListView.builder(padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 18.h,
                          width: 80.w,
                          margin: EdgeInsets.symmetric(
                            vertical: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: popular[index].clr,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                popular[index].image.toString(),
                                height: 18.h,
                              ),
                              SizedBox(width: 40.w,
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      popular[index].name.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      popular[index].star.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 16.h,
                          left: 71 .w,
                          child: InkWell(
                            onTap: () {
                              print('Hello');
                            },
                            child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: popular[index].btnclr,
                                  borderRadius: BorderRadius.circular(80)),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white,size: 25.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: popular.length),
            )
          ],
        ),
      ),
    );
  }
}
