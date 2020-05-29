import 'package:flutter/material.dart';

class LayoutBuilderEx extends StatelessWidget {
  gridviewForPhone() {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red[100 * (index % 9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );
  }

  gridviewForTablet() {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.green[100 * (index % 9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth < 600.0) {
                return gridviewForPhone();
              } else {
                return gridviewForTablet();
              }
            },
          ),
        ),
      ),
    );
  }
}
