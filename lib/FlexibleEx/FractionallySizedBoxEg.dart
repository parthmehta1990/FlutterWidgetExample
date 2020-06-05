import 'package:flutter/material.dart';

class FractionallySizedBoxEg extends StatefulWidget {
  @override
  _FractionallySizedBoxEgState createState() => _FractionallySizedBoxEgState();
}

class _FractionallySizedBoxEgState extends State<FractionallySizedBoxEg> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: .5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200.0,
                width: 150.0,
                color: Colors.red,
                child: SelectableText(
                  'Hello! How are you?',
                  textAlign: TextAlign.center,
                  showCursor: true,
                  onTap: () {
                    showMyDialog(context);
                  },
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              //this goes in as one of the children in our column
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              //this goes in as one of the children in our column
//after or before our switch widget. (I used it after)
              Checkbox(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Material(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.red,
                  // When the user taps the button, show a snackbar.
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Tap'),
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Text('Flat Button'),
                  ),
                ),
              ),
              Material(
                elevation: 4.0,
                shape: CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: Ink(
                    child: Image.network(
                        'http://clipart-library.com/images/rTLngEzBc.png',
                        fit: BoxFit.cover),
                    width: 120.0,
                    height: 120.0,
                  ),
                ),
              ),
              PopupMenuButton<int>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("First"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Second"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  showMyDialog(context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
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
/*
Note:
Generally we can give width and height in numbers but if we have to give width and height in % then we have to 
use "FractionallySizedBox" widget and assign the height and width factor.

To give color to the child of Inkwell widget wrap the widget in Material Widget and give color to the material color
and give splash color Inkwell widget.

An InkWell widget must always have a Material widget as it’s parent.

It will only work when you have implemented at least one of its click event handler like the onTap event handler.
 */
