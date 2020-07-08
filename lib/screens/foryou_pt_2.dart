import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/donations.dart';
import 'package:flutterappecoact/screens/settings.dart';

class ForYouPt2 extends StatefulWidget {
  @override
  _ForYouPt2State createState() => _ForYouPt2State();
}

class _ForYouPt2State extends State<ForYouPt2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox (height:15.0),
            Text('For You',
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w700,
                 ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 225,
              width: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 225,
                            width: 200,
                            decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/news5.png', fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 225,
                            width: 200,
                            decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/news4.png', fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 225,
                            width: 200,
                            decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/news3.png', fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 225,
                            width: 200,
                            decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/news1.png', fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 225,
                            width: 200,
                            decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            child: Image.asset('assets/news6.png', fit: BoxFit.cover),

                          ),
                        ),
                      ]
                ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 382.0,
              width: 350.0,
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(' Donations',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Donations()),),
                          child: Text('                                 more')),
                    ],
                  ),

                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius:7,
                                offset: Offset(0,3),
                              ),
                            ],
                          ),
                          child: Image.asset('assets/foggy-forest-4.jpg'),
                          height: 225,
                          width:340,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration (
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20.0),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Donate to our app today! 90% of our donations will go climate change nonprofits                                              OR                                           Donate directly to climate change nonprofits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700,
                              ),
                          ),
                        ),
                        height: 225,
                        width:340,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    decoration: BoxDecoration (
                      color: Colors.lightBlueAccent.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius:7,
                          offset: Offset(0,3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Do you want to take action right now? You can send a pre-populated email to your state legislator to take action against climate change!',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    height: 175,
                    width: 340,

                  ),
                  SizedBox (height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: Container(
                      decoration: BoxDecoration (
                        color: Colors.teal.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('    Send Now',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      height: 40.0,
                      width: 150.0,
                    ),
                  ),
                  SizedBox (height: 15.0),
                  Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius:7,
                          offset: Offset(0,3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/climate-change-5.jpg', fit: BoxFit.cover),
                    height: 200.0,
                    width: 340.0,
                  ),
                  SizedBox (height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                      decoration: BoxDecoration (
                        color: Colors.teal.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Make your own petition here',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      height: 40.0,
                      width: 249.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 113.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Settings()),),
                      child: Container(
                        decoration: BoxDecoration (
                          color: Colors.teal.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius:7,
                              offset: Offset(0,3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('   Settings',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        height: 40.0,
                        width: 125.0,

                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration (
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius:7,
                    offset: Offset(0,3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('                Bottom Navigation Bar',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              height: 35.0,
              width: 350.0,
            ),
          ],
        ),
      ),
    );
  }
}
