import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/services/database_service.dart';


@immutable
class UserId {
  const UserId({@required this.uid});

  final String uid;
}

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class FirebaseAuthService extends ChangeNotifier{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Status _status = Status.Uninitialized;

  FirebaseUser _firebaseUser;

  FirebaseUser get user => _firebaseUser;

  FirebaseAuthService() {
    _firebaseAuth = FirebaseAuth.instance;
    _firebaseAuth.onAuthStateChanged.listen(_onAuthStateChanged);
  }

  //create user object based on firebase user
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }



  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }


  Future<bool> createUserWithEmailAndPassword(
      String email, String password) async {
    try {

      print('updated status');

      final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } catch (e) {

      print(e);
      return false;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      //create a new document for the user with the uid
      //await DatabaseService(uid: user.uid).updateUserData('0', 'Lucas', 100);
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  Future<void> _onAuthStateChanged(FirebaseUser firebaseUser) async {
    if (firebaseUser == null) {
      _status = Status.Unauthenticated;
    } else {
      print(firebaseUser);
      _firebaseUser = firebaseUser;
      _status = Status.Authenticated;
    }
    notifyListeners();
  }


  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
  }

}