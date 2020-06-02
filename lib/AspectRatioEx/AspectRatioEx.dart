import 'package:flutter/material.dart';

class AspectRatioEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatio Widget")),
      body: Center(
        child: AspectRatio(
          aspectRatio: 0.5,
          child: Container(height: 50.0, width: 40.0, color: Colors.red),
        ),
      ),
    );
  }
}

/*
* NOTE:
* Width and height ration should be less than aspect ration otherwise it will be calculated and applied
*
* */