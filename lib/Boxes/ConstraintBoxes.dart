import 'package:flutter/material.dart';

class ConstraintBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConstrainedBox(
          //set constraints property
          //BoxConstraints() : Creates box constraints with the given constraints.
          //BoxConstraints.expand(): Creates box constraints that expand to fill another box constraints.
          //BoxConstraints.tight(): Creates box constraints that is respected only by the given size.
          //BoxConstraints.loose(): Creates box constraints that forbid sizes larger than the given size.
          //BoxConstraints.tightFor(): Creates box constraints that require the given width or height.
          //BoxConstraints.tightForFinite(): Creates box constraints that require the given width or height, except if they are infinite.
          //here, our container, is 150x150, but we constrained it to 60x60
          constraints: BoxConstraints(maxHeight: 60.0, maxWidth: 60.0),
          child: Container(height: 150.0, width: 150.0, color: Colors.red),
        ),
      ),
    );
  }
}
