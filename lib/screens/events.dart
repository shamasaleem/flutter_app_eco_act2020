import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/calendar.dart';
import 'package:flutterappecoact/screens/create_your_own_event.dart';
import 'package:flutterappecoact/screens/your_sign_ups.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List eventNames = ['Plastic bags no more ', 'Global Warming in the Arctic', 'Seeds for the future', 'Conserve Nature Rally'];
  List accountNames = ['s_sal', 'j_ong', 'e_vel','v_sun'];
  List locations = ['San Francisco', 'Seattle', 'New York', 'Los Angeles'];
  List date = ['10/15/2020' , '08/08/2020', '10/27/2020', '9/23/2020'];
  List time = ['6:00 pm', '12: 30 pm', '3:15 pm', '9:00 am',];
  List descriptions = ['protest to push legistlation on plastic bags', 'online seminar about the new temperature risings in the arctic', 'planting trees event', 'protest on the opening of a new shopping mall'];
  String dropdownValue  ='Local';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 145.0),
              child: Text('Events',
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            SizedBox(width: 75.0),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CreateOwnYourEvent()),),
                child: Icon(Icons.add_circle, size: 30.0, color: Colors.blueAccent.withOpacity(0.2),
                ),
            ),
          ],
        ),
          Center(
            child: Container(
              height: 615,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius:7,
                    offset: Offset(0,3),
                    ),
                  ],
                ),
              child: Column(
                children: <Widget>[
                    DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                    setState(() {
                    dropdownValue = newValue;
                    });
                    },
                    items: <String>['Local', 'National', 'International',]
                        .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(fontSize: 23.0, color: Colors.teal.withOpacity(0.75),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => YourSignUps()),),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 40.0,
                            width: 145.0,
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
                              child: Text(' Your Sign Ups',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Calendar()),),
                        child: Container(
                          height: 40.0,
                          width: 150.0,
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
                            child: Text(' Go to calendar',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 527.0,
                    child: ListView.builder(
                      itemCount: accountNames.length,
                      itemBuilder: (context, index){
                        return Container(
                          color: Colors.lightBlueAccent.withOpacity(0.2),
                            height: 203.0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height:15.0),
                                  Text('Event Name: ' + eventNames[index]),
                                  Text('Event Coordinator: ' + accountNames[index]),
                                  Text('Location: ' + locations[index]),
                                  Text('Date: ' + date[index]),
                                  Text('Time: ' + time[index]),
                                  Text('Event Description: ' + descriptions[index]),
                                  SizedBox(height: 15.0),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Container(
                                          height: 40.0,
                                          width: 100.0,
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
                                            child: Text(' Sign Up',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                            ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Container(
                                          height: 40.0,
                                          width: 189.0,
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
                                            child: Text(' Add to google calendar',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                ],
                              ),
                                  SizedBox(height: 5.0),
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
                  )
                ],

              ),
            ),
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
        );
  }
}


