import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappecoact/models/user.dart';

class DatabaseService{
  //final String uid;
  //DatabaseService({this.uid});

  //collection reference
  //final CollectionReference brewCollection = Firestore.instance.collection('brews');
  Firestore _firestore = Firestore.instance;

  Future<void> updateUser(User user) async {
    await _firestore
        .collection('users')
        .document(user.uid)
        .updateData(user.toJson());
  }

  Future<User> createUser(String email, String firstName, String lastName,
      String phoneNumber, String uid) async {
    User newUser = User(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      uid: uid,
      interests: new List<String>(),
    );
    await _firestore
        .collection('users')
        .document(uid)
        .setData(newUser.toJson());
    return newUser;
  }

  /*
  Future updateUserData(String sugars, String name, int strength) async {
    return await brewCollection.document(uid).setData({
      'sugars': sugars,
      'name' : name,
      'strength': strength
    });
  }*/

  /*
  //get brews stream
  Stream<QuerySnapshot> get brews{
    return brewCollection.snapshots();
  }*/
}