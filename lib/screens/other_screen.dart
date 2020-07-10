import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/choose_your_feed.dart';

class OtherScreen extends StatefulWidget {
  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/backgroundimage.png"), fit: BoxFit.cover)),


              child: Scaffold(
                backgroundColor: Colors.transparent,

              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              right: 10,
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Center(
                    child: Text('If other, please explain',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox (height: 350),
                  Container(
                    decoration: BoxDecoration (
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius:7,
                          offset: Offset(0,3),
                        ),
                      ],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:TextField(
                        obscureText: false,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Please Explain',
                        ),
                      )
                    ),
                    height: 200,
                    width: 300,

                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourFeed()),),
                    child: Text('Next/Skip',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
    ),
        ),
      ),
    );
  }
}
