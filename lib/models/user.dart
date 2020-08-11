import 'package:cloud_firestore/cloud_firestore.dart';

class User{

  String id;
  String name;
  String phoneNumber;
  String email;
  String bio;
  final String profileImageUrl;
  List<String> interests;

  User({this.id, this.name, this.phoneNumber, this.email, this.bio, this.profileImageUrl, this.interests});

  factory User.fromDoc(DocumentSnapshot doc){
    return User(
      id: doc.documentID,
      name: doc['name'],
      phoneNumber: doc['phoneNumber'],
      email: doc['email'],
      bio: doc['bio'] ?? '',
      profileImageUrl: doc['profileImageUrl'],
      interests: doc['interests'] ?? null,
    );
  }

}