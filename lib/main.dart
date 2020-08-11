import 'package:firebase_auth/firebase_auth.dart';
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
import 'models/user_data.dart';
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

Widget _getScreenId(){
  return StreamBuilder<FirebaseUser>(
    stream: FirebaseAuth.instance.onAuthStateChanged,
    builder: (BuildContext context, snapshot){
      if(snapshot.hasData){
        Provider.of<UserData>(context).currentUserId = snapshot.data.uid;
        return HomePage();
      }
      else{
        return LogIn();
      }
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => UserData()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eco Act 2020',
        home: _getScreenId(),
        routes: {
          LogIn.id: (context) => LogIn(),
          SignupScreen.id: (context) => SignupScreen(),
        },
      ),
    );
  }
}



