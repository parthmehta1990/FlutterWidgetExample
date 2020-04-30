import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // If Minimum property specified then if value is lesser than status bar then it will not be considered
        minimum: EdgeInsets.all(50),
        //making maintainBottomViewPadding property to true will avoid UI shift when opening softkeyboard

        maintainBottomViewPadding: true,
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '10',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
