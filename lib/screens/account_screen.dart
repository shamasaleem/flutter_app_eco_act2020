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
    return Container(
      height: 600.0,
      width: 350.0,
      decoration: BoxDecoration (
        color: Colors.lightBlueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.35),
            spreadRadius: 5,
            blurRadius:7,
            offset: Offset(0,3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(
              Icons.account_circle,
              size: 75.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Name: ', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
                ),
                Text(
                  _profileUser.name ?? 'no name',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Email: ', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
                ),
                Text(
                  _profileUser.email ?? 'no email',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text('Phone Number: ', style: TextStyle(fontSize: 18.0,fontWeight:FontWeight.w600)),
                ),
                Text(
                  _profileUser.phoneNumber ?? 'no phone number',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
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
    Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Scaffold(
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
      ),
    );
  }
}
