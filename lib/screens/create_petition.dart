import 'package:flutter/material.dart';

class CreatePetition extends StatefulWidget {
  @override
  _CreatePetitionState createState() => _CreatePetitionState();
}

class _CreatePetitionState extends State<CreatePetition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Text('Create Petition', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,
            ),
            ),
            Container(
              height: 615,
              width: 350,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: 300.0,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Name of Petition: ',
                        ),
                      )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 75.0,
                      width: 300.0,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Description: ',
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 75.0,
                      width: 300.0,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Adressed to: ',
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 75.0,
                      width: 300.0,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Signatures Needed: ',
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 40.0,
                      width: 85.0,
                      decoration: BoxDecoration (
                        color: Colors.teal.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 5,
                            blurRadius:7,
                            offset: Offset(0,3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Create',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              )
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
