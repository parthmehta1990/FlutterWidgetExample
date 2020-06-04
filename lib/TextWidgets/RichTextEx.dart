import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextEx extends StatelessWidget {
  TextStyle defaultStyle = TextStyle(fontSize: 24, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: ' This ',

                  style: defaultStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.blue)),
              TextSpan(text: "hyper link embedded text.", style: defaultStyle)
            ],
          ),
        ),
      ),
    );
  }

  // user defined function
  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
