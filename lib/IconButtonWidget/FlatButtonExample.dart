import 'package:flutter/material.dart';

//Flat button is used to show icon with text where IconButton is used to show only Icon as button
class FlatButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Icon Button'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: FlatButton.icon(
              clipBehavior: Clip.antiAlias,
              colorBrightness: Brightness.light,
              splashColor: Colors.teal,
              color: Colors.red,
              icon: Icon(Icons.add_a_photo),
              //`Icon` to display
              label: Text('Add a Photo'),
              //`Text` to display
              onPressed: () {
                //Code to execute when Floating Action Button is clicked
                //...
              },

            ),
          ),
        ],
      ),
    );
  }
}
