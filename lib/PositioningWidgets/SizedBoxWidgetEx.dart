import 'package:flutter/material.dart';

class SizedBoxWidgetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SafeArea(
                child: Center(
                    child: Column(
                        children: [

                          Container(
                            height: 150.00,
                            width: 150.00,
                            color: Colors.green,
                            //Put your child widget here.
                          ),

                          SizedBox(
                            width: 220.00,
                            height: 220.00,
                            child: const DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Colors.lightBlueAccent,
                              ),
                              // Put Your Child widget here.
                            ),
                          ),

                        ]
                    )
                )
            )
        )
      /*Sizedbox with center widget*/
      /*Center(
          child: SizedBox(
            height: 80.0,
            width: 80.0,
            //the container has no width or height, but the sizedbox widget forces it to its own width/height
            child: Container(
              width: 500.0,
              height: 25.0,
              color: Colors.red,
            ),
          ),
        ),*/

    );
  }
}

//Note Sized Box Forces its child widget to use its width and height
