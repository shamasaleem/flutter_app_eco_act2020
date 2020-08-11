
import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/post.dart';
import 'package:flutterappecoact/models/user.dart';
import 'package:flutterappecoact/services/database_service.dart';
import 'package:flutterappecoact/widgets/post_view.dart';

import 'create_post_screen.dart';

class FeedScreen extends StatefulWidget {
  static final String id = 'feed_screen';
  final String currentUserId;

  FeedScreen({this.currentUserId});

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _setupFeed();
  }

  _setupFeed() async {
    //List<Post> posts = await DatabaseService.getFeedPosts(widget.currentUserId);

    List<Post> posts = await DatabaseService.getUserPosts(widget.currentUserId);
    //List<Post> posts = await DatabaseService.getAllPosts();
    setState(() {
      print(widget.currentUserId);
      _posts = posts;
      print(_posts);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'EcoAct2020',
          style: TextStyle(
            color: Colors.black,
            fontSize: 35.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'DMSerifDisplay',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => CreatePostScreen())),

      ),

      body: RefreshIndicator(
        onRefresh: () => _setupFeed(),
        child: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (BuildContext context, int index) {
            Post post = _posts[index];
            return FutureBuilder(
              future: DatabaseService.getUserWithId(post.authorId),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return SizedBox.shrink();
                }
                User author = snapshot.data;
                return PostView(
                  currentUserId: widget.currentUserId,
                  post: post,
                  author: author,
                );
              },
            );
          },
        ),
      ),

    );
  }
}
