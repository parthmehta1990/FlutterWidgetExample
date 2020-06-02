import 'package:flutter/material.dart';

class SizedOverFlowBoxEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue[50],
          child: Align(
            alignment: const Alignment(0, 0),
            child: SizedBox(
              width: 100.0,
              height: 200.0,
              child: SizedOverflowBox(
                size: Size(40.0, 30.0),
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}

/*
* NOTE:
* SizedOverFlowBox will align the component and then create component of the sized specified in Size of SizedOverFlowBox Widget
**/