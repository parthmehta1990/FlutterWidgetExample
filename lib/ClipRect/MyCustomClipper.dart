import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final path=Path();
    path.lineTo(size.width,0.0);
    path.lineTo(size.width*0.75,size.height);
    path.lineTo(size.width*0.25,size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}