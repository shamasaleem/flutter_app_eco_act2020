import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/chat_feature.dart';
import 'package:flutterappecoact/screens/choose_your_feed.dart';
import 'package:flutterappecoact/screens/chose_your_interests.dart';
import 'package:flutterappecoact/screens/create_your_own_event.dart';
import 'package:flutterappecoact/screens/events.dart';
import 'package:flutterappecoact/screens/homepage.dart';
import 'package:flutterappecoact/screens/login_screen.dart';
import 'package:flutterappecoact/screens/petitions.dart';
import 'package:flutterappecoact/screens/signed_petitions.dart';
import 'package:flutterappecoact/screens/signup_screen.dart';
import 'package:flutterappecoact/services/database_service.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';
import 'package:flutterappecoact/services/user_service.dart';
import 'package:provider/provider.dart';
import 'screens/calendar.dart';
import 'screens/create_petition.dart';
import 'screens/donations.dart';
import 'screens/event_roster.dart';
import 'screens/foryou_pt_2.dart';
import 'screens/learn_more.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FirebaseAuthService>(
          create: (_) => FirebaseAuthService(),
        ),
        Provider<DatabaseService>(
          create: (_) => DatabaseService(),
        ),
        ChangeNotifierProxyProvider<FirebaseAuthService, UserService>(
          create: (_) => UserService(),
          update: (BuildContext context, FirebaseAuthService authService,
              UserService userService) {
            if (authService.user == null) {
              return userService..clearUid();
            } else {
              return userService..setUid(authService.user.uid);
            }
          },
        ),
      ],
        child: MaterialApp(
          title: 'Welcome to Flutter',
          home: LogIn(),
        ),
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
    return SignupScreen();

  }
}

