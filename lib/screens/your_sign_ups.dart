import 'package:flutter/material.dart';

class YourSignUps extends StatefulWidget {
  @override
  _YourSignUpsState createState() => _YourSignUpsState();
}

class _YourSignUpsState extends State<YourSignUps> {
  List eventNames = ['Seeds for the future', 'Conserve Nature Rally'];
  List accountNames = ['e_vel','v_sun'];
  List locations = ['New York', 'Los Angeles'];
  List date = ['10/27/2020', '9/23/2020'];
  List time = ['3:15 pm', '9:00 am',];
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
                  SizedBox(width: 30.0),
                  Text('Your Sign Ups',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        fontFamily: 'DMSerifDisplay',
                      ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 650.0,
                  color: Colors.lightBlueAccent.withOpacity(0.2),
                  child: ListView.builder(
                    itemCount: accountNames.length,
                    itemBuilder: (context, index){
                      return Container(

                        height: 150.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Event Name: ' + eventNames[index]),
                              Text('Event Coordinator: ' + accountNames[index]),
                              Text('Location: ' + locations[index]),
                              Text('Date: ' + date[index]),
                              Text('Time: ' + time[index]),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: Container(
                                  height: 40.0,
                                  width: 160.0,
                                  decoration: BoxDecoration (
                                    color: Colors.teal.withOpacity(0.75),
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
                                    child: Text('  Remove Sign Up',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'DMSerifDisplay',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 2.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
