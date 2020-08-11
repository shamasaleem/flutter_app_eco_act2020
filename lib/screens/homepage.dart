import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterappecoact/models/user_data.dart';
import 'package:flutterappecoact/screens/account_screen.dart';
import 'package:flutterappecoact/screens/feed_screen.dart';
import 'package:flutterappecoact/screens/foryou_pt_2.dart';
import 'package:flutterappecoact/screens/learn_more.dart';
import 'package:provider/provider.dart';
import 'events.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    //_pageController = PageController(initialPage: _selectedTab, keepPage: false);
  }

  @override
  Widget build(BuildContext context) {
    final String currentUserId = Provider.of<UserData>(context).currentUserId;
    print(currentUserId);
    /*
    var _pageOptions = [
      ForYouPt2(),
      LearnMore(),
      Events(),
      //Networking (),
      AccountScreen(
        currentUserId: currentUserId,
        userId: currentUserId,
      ),
    ];*/

    return Scaffold(
      //body: _pageOptions[_selectedTab],
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          //ForYouPt2(),
          FeedScreen(currentUserId: currentUserId),
          LearnMore(),
          Events(),
          //Networking (),
          AccountScreen(
            currentUserId: currentUserId,
            userId: currentUserId,
          ),
        ],
        onPageChanged: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey, blurRadius: 5.0, offset: Offset(0.0, 0.75))
          ],
          color: Colors.blue,
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.green[100],
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.event, size: 30),
            Icon(Icons.people, size: 30),
          ],
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
            _pageController.jumpToPage(_selectedTab);
          },
        ),
      ),
    );
  }
}
