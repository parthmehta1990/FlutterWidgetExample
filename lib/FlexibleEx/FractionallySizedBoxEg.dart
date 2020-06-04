import 'package:flutter/material.dart';

class FractionallySizedBoxEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FractionallySizedBox(
          heightFactor: .4,
          widthFactor: .5,
          child: Container(height: 50.0, width: 50.0, color: Colors.red),
        ),
      ),
    );
  }
}
/*
Note:
Generally we can give width and height in numbers but if we have to give width and height in % then we have to 
use "FractionallySizedBox" widget and assign the height and width factor.

 */
