import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/calendar.dart';
import 'package:flutterappecoact/screens/foryou_pt_2.dart';
import 'package:flutterappecoact/screens/learn_more.dart';
import 'package:flutterappecoact/screens/login_screen.dart';
import 'package:flutterappecoact/screens/members.dart';
import 'package:flutterappecoact/screens/networking.dart';
import 'events.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;
  var _pageOptions = [

    ForYouPt2(),
    LearnMore(),
    Events (),
    Networking (),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.75)
            )
          ],
          color: Colors.blue,
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.green[200],
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.event, size: 30),
            Icon(Icons.people, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
        ),
      ),
    );
  }
}