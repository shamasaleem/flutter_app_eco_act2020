import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappecoact/models/post.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/utils/ref_constants.dart';

class DatabaseService{
  //final String uid;
  //DatabaseService({this.uid});

  //collection reference
  //final CollectionReference brewCollection = Firestore.instance.collection('brews');
  Firestore _firestore = Firestore.instance;


  static void updateUser(User user) {
    usersRef.document(user.id).updateData({
      'name': user.name,
      'bio': user.bio,
    });
  }

  static Future<User> getUserWithId(String userId) async {
    DocumentSnapshot userDocSnapshot = await usersRef.document(userId).get();
    //print(userDocSnapshot);
    if (userDocSnapshot.exists) {
      return User.fromDoc(userDocSnapshot);
    }
    return User();
  }

  static void createPost(Post post) {
    postsRef.document(post.authorId).collection('userPosts').add({
      'imageUrl': post.imageUrl,
      'caption': post.caption,
      'likeCount': post.likeCount,
      'authorId': post.authorId,
      'timestamp': post.timestamp,
    });
  }

  static void likePost({String currentUserId, Post post}) {
    DocumentReference postRef = postsRef
        .document(post.authorId)
        .collection('userPosts')
        .document(post.id);
    postRef.get().then((doc) {
      int likeCount = doc.data['likeCount'];
      postRef.updateData({'likeCount': likeCount + 1});
      likesRef
          .document(post.id)
          .collection('postLikes')
          .document(currentUserId)
          .setData({});
    });
  }

  static void unlikePost({String currentUserId, Post post}) {
    DocumentReference postRef = postsRef
        .document(post.authorId)
        .collection('userPosts')
        .document(post.id);
    postRef.get().then((doc) {
      int likeCount = doc.data['likeCount'];
      postRef.updateData({'likeCount': likeCount - 1});
      likesRef
          .document(post.id)
          .collection('postLikes')
          .document(currentUserId)
          .get()
          .then((doc) {
        if (doc.exists) {
          doc.reference.delete();
        }
      });
    });
  }

  static Future<bool> didLikePost({String currentUserId, Post post}) async {
    DocumentSnapshot userDoc = await likesRef
        .document(post.id)
        .collection('postLikes')
        .document(currentUserId)
        .get();
    return userDoc.exists;
  }

  static void commentOnPost(
      {String currentUserId, Post post, String comment}) {
    commentsRef.document(post.id).collection('postComments').add({
      'content': comment,
      'authorId': currentUserId,
      'timestamp': Timestamp.fromDate(DateTime.now()),
    });
  }

  static Future<List<Post>> getFeedPosts(String userId) async {
    QuerySnapshot feedSnapshot = await feedsRef
        .document(userId)
        .collection('userFeed')
        .orderBy('timestamp', descending: true)
        .getDocuments();
    List<Post> posts =
    feedSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();
    return posts;
  }

  static Future<List<Post>> getAllPosts() async {
    QuerySnapshot allPostsSnapshot = await postsRef.getDocuments();

    List<Post> posts =
    allPostsSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();
    print(posts);
    return posts;
  }

  static Future<List<Post>> getUserPosts(String userId) async {
    QuerySnapshot userPostsSnapshot = await postsRef
        .document(userId)
        .collection('userPosts')
        .orderBy('timestamp', descending: true)
        .getDocuments();
    List<Post> posts =
    userPostsSnapshot.documents.map((doc) => Post.fromDoc(doc)).toList();
    print(posts);
    return posts;
  }


/*
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

   */
}