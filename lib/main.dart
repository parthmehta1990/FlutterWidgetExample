import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_app/AbsorbPointerEx/AbsorbPointerEx.dart';
import 'package:flutter_widget_app/FittedBoxEx/FittedBoxSample.dart';
import 'package:flutter_widget_app/LayoutBuilderEx/LayoutBuilderEx.dart';
import 'package:flutter_widget_app/PositioningWidgets/CenterWidgetEx.dart';
import 'package:flutter_widget_app/PositioningWidgets/ContainerEx.dart';
import 'package:flutter_widget_app/PositioningWidgets/SizedBoxWidgetEx.dart';
import 'package:flutter_widget_app/RaisedButtonEx/RaisedBtn.dart';
import 'package:flutter_widget_app/SpacerEx/SpacerEx.dart';
import 'package:flutter_widget_app/Tooltip/ToolTipWidget.dart';
import 'package:flutter_widget_app/WrapWidget.dart';

import 'AspectRatioEx/AspectRatioEx.dart';
import 'BottomNavigationWidget/BottomNavigation.dart';
import 'Boxes/ConstraintBoxes.dart';
import 'Boxes/LimitedBoxEx.dart';
import 'Boxes/OverFlowBoxEx.dart';
import 'Boxes/SizedOverFlowBoxEx.dart';
import 'ClipRect/ClipReacWidget.dart';
import 'FlexibleEx/FliexibleEx.dart';
import 'FlexibleEx/FractionallySizedBoxEg.dart';
import 'Future/FutureBuilderJson.dart';
import 'IconButtonWidget/FlatButtonExample.dart';
import 'IconButtonWidget/ICButton.dart';
import 'PageView/AnimatedIconExample.dart';
import 'PlaceHolderEx/PlaceHolderEx.dart';
import 'PositioningWidgets/AlignExample.dart';
import 'PositioningWidgets/PositionWidgetEx.dart';
import 'TextWidgets/RichTextEx.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FractionallySizedBoxEg()
      //ConstraintBoxes()
      //RichTextEx()
      //PlaceHolderEx()
      //SizedOverFlowBoxEx()
      //OverFlowBoxEx()
      //LimitedBoxEx()
      //AspectRatioEx()
      //SpacerEx()
      //FlexibleEx()
      //SizedBoxWidgetEx()
      //PositionWidgetEx()
      //CenterWidgetEx()
      //ContainerEx()
      //AlignExample()
      //AbsorbPointerEx()
      //LayoutBuilderEx()
      //FittedBoxSample()
      //RaisedBtn()
      //FlatButtonExample()
      //ICButton()
      //ToolTipWidget()
      //ClipReacWidget()
      //AnimatedIconExample()
      //FutureBuilderJson()
      //BottomNavigation()
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: ()=>{},
            tooltip: 'Profile',
            child: Icon(Icons.supervised_user_circle),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
