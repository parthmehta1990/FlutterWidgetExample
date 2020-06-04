import 'package:flutter/material.dart';

class PlaceHolderEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
                child:
                Placeholder(
                  color: Colors.red,
                  strokeWidth: 4,
                  fallbackWidth: 100,
                  fallbackHeight: 100,
                )
            ),
            SizedBox(height: 20),
            Container(
              constraints: BoxConstraints.expand(height: 100, width: 200),
              child: Placeholder(
                color: Colors.blue,
                strokeWidth: 4,
                fallbackWidth: 10,
                fallbackHeight: 100,
              ),
            ),
          ],


        )
    );
  }
}
