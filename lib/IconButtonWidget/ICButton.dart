import 'package:flutter/material.dart';

class ICButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black26,
        child: IconButton(
          icon: Icon(Icons.access_alarm),
          onPressed: (){},
          color: Colors.redAccent,
          disabledColor: Colors.green,
          highlightColor: Colors.amber,
          //gives extra touchable space to highlightColors
          padding: EdgeInsets.all(0.0),
          //Gives color to padding area
          splashColor: Colors.tealAccent,
          //Align property is used to align the icon within the IconButton area
          alignment: Alignment.center,
          tooltip: "Icon Button",

        ),
      )
    );
  }
}
