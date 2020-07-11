import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/other_screen.dart';

class ChooseYourInterests extends StatefulWidget {
  @override
  _ChooseYourInterestsState createState() => _ChooseYourInterestsState();
}

class _ChooseYourInterestsState extends State<ChooseYourInterests> {
  bool takeActionButton = false;
  bool educationButton = false;
  bool createEventsButton = false;
  bool networkingButton = false;
  bool otherButton = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: 415.0,
              child: Image.asset(
                'assets/backgroundimage.png',
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 45,
            left: 40,
            child: Container(
              width: 320,
              height: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text('How are you going to use this app?',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            takeActionButton = !takeActionButton;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: takeActionButton ? Colors.grey : Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150,
                          height: 100,
                          child: Center(
                            child: Text('Take Action',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            educationButton = !educationButton;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: educationButton ? Colors.grey : Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150,
                          height: 100,
                          child: Center(
                            child: Text('Education',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            createEventsButton = !createEventsButton;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: createEventsButton ? Colors.grey : Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150,
                          height: 100,
                          child: Center(
                            child: Text('Create Events',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            networkingButton = !networkingButton;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: networkingButton ? Colors.grey : Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150,
                          height: 100,
                          child: Center(
                            child: Text('Networking',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            otherButton = !otherButton;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: otherButton ? Colors.grey : Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150,
                          height: 100,
                          child: Center(
                            child: Text('Other',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => OtherScreen()),
                    ),
                    child: Text(
                      'Next',
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
