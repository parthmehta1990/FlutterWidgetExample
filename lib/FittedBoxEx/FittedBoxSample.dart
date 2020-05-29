import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Sample"),
      ),
      body: Container(
        color: Colors.teal,
        child: ListView(
          children: <Widget>[

            FittedBox(
              alignment: Alignment.bottomRight,
              fit: BoxFit.fitHeight,
              child: Container(
                color: Colors.redAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.network(
                          "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    ),
                    Container(
                      child: Text("This is the very very very veryvery veryvery veryvery veryvery veryvery veryvery very lager text"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
