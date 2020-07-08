import 'package:flutter/material.dart';

class CreateOwnYourEvent extends StatefulWidget {
  @override
  _CreateOwnYourEventState createState() => _CreateOwnYourEventState();
}

class _CreateOwnYourEventState extends State<CreateOwnYourEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox (height: 30.0),
            Text ('Create Your Own Event',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
            ),
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration (
                color: Colors.lightBlueAccent.withOpacity(0.2),
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
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.white,
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
                  height: 65.0,
                  width: 325.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Name of the Event:',
                        style: TextStyle(
                            fontSize: 16,
                        ),
                    ),
                  )
                ),
              ),
              Positioned(
                top: 100,
                left: 10,
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.white,
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
                  height: 50,
                  width: 325,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Location:'),
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: 10,
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.white,
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
                  height: 50,
                  width: 325,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Date:'),
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 10,
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.white,
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
                  height: 50,
                  width: 325,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Time:'),
                  ),
                ),
              ),

              Positioned(
                top: 325,
                left: 10,
                child: Container(
                  decoration: BoxDecoration (
                    color: Colors.white,
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
                  height: 200,
                  width: 325,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Description of Event:'),
                  ),
                ),
              ),
              Positioned(
                top: 550,
                left: 125,
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
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(' Create',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
            SizedBox(height: 15.0),
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
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              height: 35.0,
              width: 350.0,
            )
          ],
        ),
      ),
    );
  }
}


