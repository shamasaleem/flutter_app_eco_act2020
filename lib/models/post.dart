import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id;
  final String imageUrl;
  final String caption;
  final String content;
  final int likeCount;
  final String authorId;
  final Timestamp timestamp;

  Post({
    this.id,
    this.imageUrl,
    this.caption,
    this.content,
    this.likeCount,
    this.authorId,
    this.timestamp,
  });

  factory Post.fromDoc(DocumentSnapshot doc) {
    return Post(
      id: doc.documentID,
      imageUrl: doc['imageUrl'],
      caption: doc['caption'],
      content: doc['content'],
      likeCount: doc['likeCount'],
      authorId: doc['authorId'],
      timestamp: doc['timestamp'],
    );
  }
}