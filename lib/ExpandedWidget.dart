import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 20,
            color: Colors.deepOrange,
          ),
          Expanded(
            //Will fill/expand the remaining space in layout
            flex: 1,
            child: Container(
              height: 20,
              color: Colors.green,
            ),
          ),
          Container(
            height: 15,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
