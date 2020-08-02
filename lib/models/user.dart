import 'package:cloud_firestore/cloud_firestore.dart';

class User{

  String uid;
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  List<String> interests;
  DocumentReference reference;

  User({
    this.uid,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.interests,
  });

  factory User.fromSnapshot(DocumentSnapshot snapshot){
    User newUser = User.fromJson(snapshot.data);
    newUser.reference = snapshot.reference;
    return newUser;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    List<String> convertInterests = new List<String>();
    List interests = json['interests'] as List;
    if (interests != null) {
      interests.forEach((interests) {
        interests.add(interests.toString());
      });
    }

    return User(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      interests: convertInterests,
    );
  }

  Map<String, dynamic> toJson() => _UserToJson(this);

  Map<String, dynamic> _UserToJson(User instance) => <String, dynamic>{
    'uid': instance.uid,
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'phoneNumber': instance.phoneNumber,
    'email': instance.email,
    'interests': instance.interests,
  };
}