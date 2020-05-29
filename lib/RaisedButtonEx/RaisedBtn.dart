import 'package:flutter/material.dart';

class RaisedBtn extends StatefulWidget {
  @override
  _RaisedBtnState createState() => _RaisedBtnState();
}

class _RaisedBtnState extends State<RaisedBtn> {
  String msg = "This is Raised Button Demo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              msg,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),

            RaisedButton(
              
              child: Text("Rock & Roll"),
              onPressed: _changeText,
              color: Colors.red,
              textColor: Colors.yellow,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              splashColor: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'I have learned FlutterRaised example ';
      } else {
        msg = 'Flutter RaisedButton example';
      }
    });
  }
}
