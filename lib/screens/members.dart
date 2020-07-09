import 'package:flutter/material.dart';

class members extends StatefulWidget {
  @override
  _membersState createState() => _membersState();
}

class _membersState extends State<members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                width: 415,
                height: 1000,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('See Members', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 65,
                left: 20,
                child: Container(
                  width: 375,
                  height: 600,
                  decoration: BoxDecoration (
                    color: Colors.blueAccent.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 5,
                        blurRadius:7,
                        offset: Offset(0,3),
                      ),
                    ],
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Climate Group', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text ('Account:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration (
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.15),
                                  spreadRadius: 5,
                                  blurRadius:7,
                                  offset: Offset(0,3),
                                ),
                              ],
                            ),
                            width: 200,
                            height: 80,
                            child:Center(
                              child: Text ('Join Group', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)
                              ),
                            ),
                          )],
                      ),
                    ],
                  ),
                ),
              )
            ]

        ));
  }
}
