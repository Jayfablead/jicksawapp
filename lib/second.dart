import 'package:flutter/material.dart';

class JigsawPuzzle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipPath(
          clipper: JigsawPuzzleClipper(1),
          child: Image.network(
            'https://picsum.photos/id/237/200/300',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        ClipPath(
          clipper: JigsawPuzzleClipper(1),
          child: Image.network(
            'https://picsum.photos/id/238/200/300',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        ClipPath(
          clipper: JigsawPuzzleClipper(2),
          child: Image.network(
            'https://picsum.photos/id/239/200/300',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class JigsawPuzzleClipper extends CustomClipper<Path> {
  final int pieceIndex;

  JigsawPuzzleClipper(this.pieceIndex);

  @override
  Path getClip(Size size) {
    var path = Path();

    switch (pieceIndex) {
      case 0:
        path.moveTo(0, size.height);
        path.lineTo(size.width / 2, size.height / 2);
        path.lineTo(size.width, size.height);
        path.lineTo(0, size.height);
        break;
      case 1:
        path.moveTo(0, size.height);
        path.lineTo(size.width, 0);
        path.lineTo(size.width / 2, size.height / 2);
        path.lineTo(0, size.height);
        break;
      case 2:
        path.moveTo(size.width / 2, size.height / 2);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        path.lineTo(size.width / 2, size.height / 2);
        break;
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
