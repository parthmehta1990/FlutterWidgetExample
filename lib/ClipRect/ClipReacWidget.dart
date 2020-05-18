import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyCustomClipper.dart';

class ClipReacWidget extends StatefulWidget {
  @override
  _ClipReacWidgetState createState() => _ClipReacWidgetState();
}

class _ClipReacWidgetState extends State<ClipReacWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            ClipOval(
              child: Image.network(
                'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
              ),
            ),

            //For ClipRect
            ClipRect(
              child: Container(
                color: Colors.redAccent,
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 0.75,
                  heightFactor: 0.75,
                  child: Image.network(
                      'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
                ),
              ),
            ),

            ClipRect(
                child:
                    Image.network('https://i.ibb.co/1vXpqVs/flutter-logo.jpg')),

            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              child: Image.network('https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: 0.75,
                  heightFactor: 0.75,
                  child: Image.network(
                      'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
                ),
              ),
            ),

            ClipPath(
              clipBehavior: Clip.antiAlias,
              clipper: MyCustomClipper(),
              child: Image.network(
                'https://i.ibb.co/1vXpqVs/flutter-logo.jpg',
              ),

            ),
          ],
        )),
      ),
    );
  }
}
