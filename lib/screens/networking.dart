import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/chat_feature.dart';

class Networking extends StatefulWidget {
  @override
  _NetworkingState createState() => _NetworkingState();
}

class _NetworkingState extends State<Networking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                'Connect',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'DMSerifDisplay',
                ),
              ),
              Container(
                  height: 615.0,
                  width: 350.0,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 100,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Join the politics group for discussions about climate change policies',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.35),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            height: 40,
                            width: 75,
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(' Join',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      fontFamily: 'DMSerifDisplay',
                                     ),
                                ),
                            ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Join the Lifestyle group for discussions about sustainability or being eco-friendly',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.35),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            height: 40,
                            width: 75,
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(' Join',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      fontFamily: 'DMSerifDisplay',)))),
                      ),
                      SizedBox(height: 15.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.35),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 100,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Join the activism group for discussions about events/lifestyle',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => ChatFeature()),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.35),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            height: 40,
                            width: 75,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(' Join',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    fontFamily: 'DMSerifDisplay',)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 105.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.75),
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.35),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          height: 40,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text('   My Groups',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  fontFamily: 'DMSerifDisplay',)),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
