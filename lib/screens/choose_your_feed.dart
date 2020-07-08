import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/foryou_pt_2.dart';

class ChooseYourFeed extends StatefulWidget {
  @override
  _ChooseYourFeedState createState() => _ChooseYourFeedState();
}

class _ChooseYourFeedState extends State<ChooseYourFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: 415.0,
              child: Image.asset('assets/backgroundimage.png', fit: BoxFit.cover,)
          ),
          Positioned(
            top: 45,
            left: 40,
            child: Container(
              width: 320,
              height: 1000,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text ('Choose your feed... Select all that apply', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),
                        width: 150,
                        height: 100,
                        child:Center(
                          child: Text ('Lifestyle', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                          ),
                        ),
                      )],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),width: 150,
                        height: 100,
                        child:Center(
                          child: Text ('Activism', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),width: 150,
                        height: 100,
                        child:Center(
                          child: Text ('News', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),width: 150,
                        height: 100,
                        child:Center(
                          child: Text ('Science', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),width: 150,
                        height: 100,
                        child:Center(
                          child: Text ('Public Figures', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ForYouPt2()),),
                    child: Text('Next',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],

              ),
            ),

          ),
        ],

      ),
    );
  }
}
