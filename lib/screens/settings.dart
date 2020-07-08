import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: <Widget>[
            SizedBox (height: 30.0),
        Text ('Settings',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Stack(
            children: <Widget>[
        Container(
        decoration: BoxDecoration (
            color: Colors.lightBlueAccent.withOpacity(0.25),
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
      height: 615.0,
      width: 350.0,
    ),
    Positioned(
          top:15, left: 15,
          child: Padding(
          padding: const EdgeInsets.all(11.0),
            child: Row(
                children: <Widget>[
                   Icon(Icons.account_circle, size: 75.0,),
                    SizedBox(width: 25.0,),
                    Text('Account:',
                     style: TextStyle(
                      fontSize: 16,
                     ),
                 ),
                ],
            ),
          ),
          ),
          Positioned(
            top: 115,
            left: 10,
              child: Container(
                  height: 50,
                  width: 325,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                          child: Text('Location:',
                           style: TextStyle(
                            fontSize: 16,
                        ),
                    ),
                  ),
                ),
          ),
          Positioned(
              top: 175,
              left: 10,
                 child: Container(
                    height: 50,
                    width: 325,
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                          child: Text('Filter Interests:',
                          style: TextStyle(
                          fontSize: 16,
                              ),
                           ),
                        ),
                   ),
          ),
          Positioned(
              top: 225,
              left: 10,
                  child: Container(
                    height: 50,
                    width: 325,
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                          child: Text('Notifications:',
                          style: TextStyle(
                          fontSize: 16,
                            ),
                          ),
                      ),
                  ),
          ),
          Positioned(
              top: 300,
              left: 50,
                  child: Container(
                      decoration: BoxDecoration (
                        color: Colors.teal.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          spreadRadius: 5,
                          blurRadius:7,
                          offset: Offset(0,3),
                      ),
                      ],
                    ),
                      height: 45,
                      width: 250,
                     child: Padding(
                        padding: const EdgeInsets.all(8.0),
                              child: Text('Upgrade to Premium',
                              style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
              Positioned(
                top: 365,
                left: 10,
                child: Container(
                  height: 40,
                  width: 325,
                  decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
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
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Upgrading to premium will remove all ads.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Positioned(
                top: 550,
                  left: 15,
                  child: Container(
                    height: 75,
                    width: 325,
                    child: Text('If you have any questions or would like to work with us please contact: ecoact2020@gmail.com or call 925-915-7809',
                    ),
                  ),
              ),
            ],
        ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                                ),
                            ),
                        ),
                  height: 35.0,
                  width: 350.0,
                ),
          ),
            ],
            ),
          ),
    );
  }
}



