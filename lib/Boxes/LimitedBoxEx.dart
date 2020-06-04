import 'package:flutter/material.dart';

class LimitedBoxEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: LimitedBox(
          maxHeight: 200.0,
          //here, our container widget has no particular height or width
          child: Container(
            height: 150,
            color: Colors.red,
          ),
          //we use the maxWidth & maxHeight to limit it
        ),
      ),
    ));
  }
}
/*
* Limited box apply its constraints to the unbounded parent widget and has no effect on bounded widget like container
* */