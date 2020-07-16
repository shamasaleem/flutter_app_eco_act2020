import 'package:flutter/material.dart';

class CreateOwnYourEvent extends StatefulWidget {
  @override
  _CreateOwnYourEventState createState() => _CreateOwnYourEventState();
}

class _CreateOwnYourEventState extends State<CreateOwnYourEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios,
                    ),),
                  SizedBox(width: 5.0),
                  Text ('Create Your Own Event',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DMSerifDisplay',
                      ),
                  ),
                ],
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
                  height: 650.0,
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
                      height: 75.0,
                      width: 325.0,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Name of Event: ',
                            ),
                          )
                      )
                  ),
                ),
                Positioned(
                  top: 115,
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
                    height: 75,
                    width: 325,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Location: ',
                          ),
                        )
                    ),
                  ),
                ),
                Positioned(
                  top: 225,
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
                    height: 75,
                    width: 325,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Date: ',
                          ),
                        )
                    ),
                  ),
                ),
                Positioned(
                  top: 335,
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
                    height: 75,
                    width: 325,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Time: ',
                          ),
                        )
                    ),
                  ),
                ),

                Positioned(
                  top: 435,
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
                    height: 100,
                    width: 325,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Event Description: ',
                          ),
                        )
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
                          fontFamily: 'DMSerifDisplay',
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}


