import 'package:flutter/material.dart';

class LearnMore extends StatefulWidget {
  @override
  _LearnMoreState createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox (height: 30.0),
              Text ('Learn More',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'DMSerifDisplay',
                ),
              ),
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
                height: 600.0,
                width: 350.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 30,
                        width: 250,
                        color: Colors.grey.withOpacity(0.4),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('search', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300,
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Icon(Icons.search, size: 30.0),
                    ),

                  ],
                )
              ),

            ],
          ),
        ),
      ),

    );
  }
}
