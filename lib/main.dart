import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/choose_your_feed.dart';
import 'package:flutterappecoact/screens/chose_your_interests.dart';
import 'package:flutterappecoact/screens/create_your_own_event.dart';
import 'package:flutterappecoact/screens/events.dart';
import 'package:flutterappecoact/screens/login_screen.dart';
import 'screens/calendar.dart';
import 'screens/donations.dart';
import 'screens/foryou_pt_2.dart';
import 'screens/networking.dart';
import 'screens/other_screen.dart';
import 'screens/settings.dart';
import 'screens/your_sign_ups.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: LogIn(),


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );

  }
}

