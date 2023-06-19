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
  game("assets/math.png", "Math", Colors.deepPurple.withOpacity(0.8), '3',
      Colors.deepPurple),
  game("assets/memory.png", "Memory", Colors.yellow.withOpacity(0.8),
      '4', Colors.yellow),
  game("assets/trivia.png", "Trivia",
      Colors.deepOrangeAccent.withOpacity(0.8), '3', Colors.deepOrangeAccent),
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
              height: 7.h,
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
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 18.h,
                          width: 80.w,
                          margin: EdgeInsets.symmetric(
                            vertical: 1.h,
                          ),
                          decoration: BoxDecoration(
                            color: popular[index].clr,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(children: [
                            Image.asset(
                              popular[index].image.toString(),
                              height: 18.h,
                            ),
                            Column(children: [Text(popular[index].name.toString())],)
                          ]),
                        ),
                        Positioned(
                          top: 15.h,
                          left: 73.w,
                          child: InkWell(
                            onTap: () {
                              print('Hello');
                            },
                            child: Container(
                              height: 5.h,
                              width: 11.w,
                              decoration: BoxDecoration(
                                  color: popular[index].btnclr,
                                  borderRadius: BorderRadius.circular(80)),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.black,
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
