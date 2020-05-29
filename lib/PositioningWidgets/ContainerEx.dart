import 'package:flutter/material.dart';

class ContainerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(24),
         // padding: EdgeInsets.only(top: 24),
          color: Colors.teal,
          alignment: Alignment.topLeft,
          child: Text("Simple Text"),
        ),
      ),
    );
  }
}
