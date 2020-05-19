import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Tooltip',
      )),
      body: Center(
        child: Container(
          child: Tooltip(
              message: 'FlutterLogo',
              child: FlutterLogo(
                size: 100,
              )),
        ),
      ),
    );
  }
}
