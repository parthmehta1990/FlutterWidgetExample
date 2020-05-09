import 'package:flutter/material.dart';

class ContentData extends StatelessWidget {

  final Color color;

  ContentData(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
