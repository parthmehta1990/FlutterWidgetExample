import 'package:flutter/material.dart';
import 'ContentData.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ContentData(Colors.redAccent),
    ContentData(Colors.green),
    ContentData(Colors.amberAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: Text("Message"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: Text("Profile"),
          ),


        ],
      ),

    );
  }

  void onTabTapped(int value) {

    setState(() {
      _currentIndex=value;
    });
  }
}
