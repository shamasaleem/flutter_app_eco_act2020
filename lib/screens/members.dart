import 'package:flutter/material.dart';

class members extends StatefulWidget {
  @override
  _membersState createState() => _membersState();
}

class _membersState extends State<members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
              children: [
                Container(
                  width: 415,
                  height: 1000,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.arrow_back_ios,
                            ),),
                         SizedBox(width:30.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('See Members', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600,fontFamily: 'DMSerifDisplay',),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 20,
                  child: Container(
                    width: 350,
                    height: 615,
                    decoration: BoxDecoration (
                      color: Colors.lightBlueAccent.withOpacity(0.20),
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
                                child: Text ('Activism Group', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,)
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
                                color: Colors.teal.withOpacity(0.75),
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
                              width: 175,
                              height: 50,
                              child:Center(
                                child: Text ('Join Group',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      fontFamily: 'DMSerifDisplay',
                                    ),
                                ),
                              ),
                            )],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
          ),
        ),
    );
  }
}
