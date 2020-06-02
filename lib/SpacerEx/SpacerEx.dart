import 'package:flutter/material.dart';

class SpacerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                color: Colors.lightBlue,
                height: 30.0,
                width: 30.0,
                child: Center(
                    child: Text(
                  '30.0',
                  style: TextStyle(fontSize: 40.0),
                ))),
            Spacer(flex: 1,),
            Container(
              color: Colors.green,
              height: 60.0,
              width: 60.0,
              child: Center(
                  child: Text(
                '60.0',
                style: TextStyle(fontSize: 40.0),
              )),
            ),
            Spacer(flex: 2,),
            Container(
              color: Colors.tealAccent,
              height: 60.0,
              width: 60.0,
              child: Center(
                  child: Text(
                    '35',
                    style: TextStyle(fontSize: 40.0),
                  )),
            ),
            Container(
              color: Colors.redAccent,
              height: 60.0,
              width: 60.0,
              child: Center(
                  child: Text(
                    '70',
                    style: TextStyle(fontSize: 40.0),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

/*
* NOTE:
* Spacer widget will not work with  Flex.mainAxisAlignment on a flex container that contains a Spacer to MainAxisAlignment.spaceAround, MainAxisAlignment.spaceBetween, or MainAxisAlignment.spaceEvenly attribute of MainAxis of parent widget
* */
