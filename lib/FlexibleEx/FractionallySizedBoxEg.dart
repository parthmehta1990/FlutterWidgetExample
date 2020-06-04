import 'package:flutter/material.dart';

class FractionallySizedBoxEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FractionallySizedBox(
          heightFactor: .4,
          widthFactor: .5,
          child: Container(
            height: 50.0,
            width: 50.0,
            color: Colors.red,
            child: SelectableText(
              'Hello! How are you?',
              textAlign: TextAlign.center,
              showCursor: true,
              onTap: (){
                showMyDialog(context);
              },
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

   showMyDialog(context)  {
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

 */
