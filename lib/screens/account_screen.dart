import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/services/database_service.dart';
import 'package:flutterappecoact/services/firebase_auth_service.dart';

class AccountScreen extends StatefulWidget {
  final String currentUserId;
  final String userId;

  AccountScreen({this.currentUserId, this.userId});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  User _profileUser;

  @override
  void initState() {
    super.initState();
    _setupProfileUser();
  }

  _setupProfileUser() async {
    User profileUser = await DatabaseService.getUserWithId(widget.userId);
    print('user: ' + profileUser.name);
    setState(() {
      _profileUser = profileUser;
    });
  }

  _buildUserInfo(User user) {
    return Column(
      children: [
        Text(
          _profileUser.name ?? 'no name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          _profileUser.email ?? 'no email',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0),
        ),
        Text(
          _profileUser.phoneNumber ?? 'no phone number',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _profileUser == null ?
        Scaffold(
          body: Center(child: RaisedButton(
            child: Text('Log out'),
            onPressed: () {
              FirebaseAuthService.logout(context);
            },
          ),),
        ):
    Scaffold(
      body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text('Log out'),
                onPressed: () {
                  FirebaseAuthService.logout(context);
                },
              ),
              _buildUserInfo(_profileUser),
            ],
          )
      ),
    );
  }
}
