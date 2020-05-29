import 'package:flutter/material.dart';

class CenterWidgetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          //If HeightFactor and WidthFactor is assigned then child widget will grow with that factor
          //and child will not be in the center of the screen
          heightFactor: 3.0,
          widthFactor: 5.0,
          child: Text('Logo sjdfjksdfjbsdjfbjsdbfjsdbjkfb'),
        ),

        /*Column(
          children: <Widget>[
            Center(
              child: Text('Logo'),
            ),
            Center(
              heightFactor: 3.0,
              widthFactor: 5.0,
              child: Text('Logo sjdfjksdfjbsdjfbjsdbfjsdbjkfb'),
            ),
          ],
        ),*/
      ),
    );
  }
}
