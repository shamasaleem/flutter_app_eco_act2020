import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Text('Calendar',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 615.0,
              width: 350.0,
              child: ListView(
                children: <Widget>[
                  ClipRRect(
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
                      child: Image.asset('assets/july2020.jpg', fit: BoxFit.cover),
                      height: 275.0,
                      width: 350.0,

                    ),
                  ),
                  ClipRRect(
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
                      child: Image.asset('assets/august2020.png', fit: BoxFit.cover),
                      height: 275.0,
                      width: 350.0,

                    ),
                  ),
                  SizedBox(height: 15.0),
                  ClipRRect(
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
                      child: Image.asset('assets/september2020.jpg', fit: BoxFit.cover),
                      height: 275.0,
                      width: 350.0,

                    ),
                  ),
                  SizedBox(height: 15.0),
                  ClipRRect(
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
                      child: Image.asset('assets/october2020.jpg', fit: BoxFit.cover),
                      height: 275.0,
                      width: 350.0,
                    ),
                  ),
                ],
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
