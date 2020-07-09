import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/calendar.dart';
import 'package:flutterappecoact/screens/login_screen.dart';
import 'package:flutterappecoact/screens/members.dart';
import 'events.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;
  var _pageOptions = [

    Calendar(),
    LogIn(),
    Events(),
    members(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.green,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.75)
            )
          ],
          color: Colors.blue,
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.grey[200],
          items: <Widget>[
            Icon(Icons.calendar_today, size: 30),
            Icon(Icons.insert_chart, size: 30),
            Icon(Icons.people, size: 30),
            Icon(Icons.person_pin, size: 30),
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