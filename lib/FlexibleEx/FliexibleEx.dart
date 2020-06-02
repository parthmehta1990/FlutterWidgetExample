import 'package:flutter/material.dart';

class FlexibleEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                color: Colors.lightBlue,
                height: 300,
                width: double.infinity,
                child: Center(
                    child: Text(
                  '600.0',
                  style: TextStyle(fontSize: 40.0),
                ))),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                  color: Colors.green,
                  height: 60.0,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'Flexible - Remaining space taken',
                    style: TextStyle(fontSize: 40.0),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Note:

unlike Expanded, Flexible does not require the child to fill the available space.

Loose fit

If you wrap your widget with loose fit, your widget will try to take up the remaining least amount of space available along the main axis.

For example if you have a container inside a column with height 600 pixels but the only available space is maybe 250 pixels, the container ends up being 250 pixels.

 */
