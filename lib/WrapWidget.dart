import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: <Widget>[
            Opacity(
              opacity: 0.3,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                color: Colors.redAccent,
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text(' Button 1 '),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text(' Button 2 '),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text(' Button 3 '),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                )),
          ],
        ),
      ),
    );
  }
}
