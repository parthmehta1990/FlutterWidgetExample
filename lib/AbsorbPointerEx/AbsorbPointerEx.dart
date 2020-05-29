import 'package:flutter/material.dart';

class AbsorbPointerEx extends StatefulWidget {
  String title = "Tip Demo";

  @override
  _AbsorbPointerExState createState() => _AbsorbPointerExState();
}

class _AbsorbPointerExState extends State<AbsorbPointerEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: AbsorbPointer(
          absorbing: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                splashColor: Colors.redAccent,
                focusColor: Colors.teal,
                child: Text("Click Me"),
                onPressed: () {
                  setState(() {
                    widget.title = "Button 1 Clicked";
                  });
                },
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {
                  setState(() {
                    widget.title = "Button 2 Clicked";
                  });
                },
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {
                  setState(() {
                    widget.title = "Button 3 Clicked";
                  });
                },
              ),
              Text(widget.title)
            ],
          ),
        ));
  }
}
