import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(height: 50.0, width: 50.0, color: Colors.red),
        ),
      ),
    );
  }
}
