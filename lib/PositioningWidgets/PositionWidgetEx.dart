import 'package:flutter/material.dart';

class PositionWidgetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(width:100,height: 100,color: Colors.blue),
            ),
            Positioned(
                top: 50,
                right: 50,
                child: Container(width:100,height: 100,color: Colors.red)
            )
          ],
        ),
      ),
    );
  }
}
