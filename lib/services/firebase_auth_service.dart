import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/models/user_data.dart';
import 'package:flutterappecoact/services/database_service.dart';
import 'package:provider/provider.dart';



class FirebaseAuthService {
  static final _auth = FirebaseAuth.instance;
  static final _firestore = Firestore.instance;

  //sign in with email and password
  /*
  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }*/

  static void login(String email, String password) async{
    try{
      _auth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
    }catch(e){
      print(e);
    }
  }


  static void signUpUser(BuildContext context, String name, String email, String phoneNumber, String password) async{
    try{
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      FirebaseUser signedInUser = authResult.user;
      if(signedInUser != null){
        _firestore.collection('/users').document(signedInUser.uid).setData({
          'name': name,
          'email': email,
          'phoneNumber': phoneNumber,
        });
        Provider.of<UserData>(context).currentUserId = signedInUser.uid;
        Navigator.pop(context);
      }
    } catch(e){
      print(e);
    }
  }

  static void logout(BuildContext context){
    _auth.signOut();
    //Navigator.pushReplacementNamed(context, LoginScreen.id);
  }

}