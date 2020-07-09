import 'package:flutter/material.dart';

class YourCreatedEvents extends StatefulWidget {
  @override
  _YourCreatedEventsState createState() => _YourCreatedEventsState();
}

class _YourCreatedEventsState extends State<YourCreatedEvents> {
  List participants1 = ['e_vel','s_sal','v_sun','j_ong','m_gub','k_smi','a_ben','s_wil','r_gen','t_cha','d_ing','r_han','m_dug','k_cha','a_dav','j_pon'];
  List participants2 = ['s_rei','a_hot','j_gid','d_mor','e_pre','j_jer','p_gar','e_gre','j_bou','j_may','k_car','p_hey','s_cam','c_bin','p_buf','r_gre','m_gel','r_gel','j_tri'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Text('Your Events', style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 15.0),
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
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 440,
                          width: 300,
                          decoration: BoxDecoration (
                            color: Colors.white,
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
                          child: Column(
                            children: <Widget>[
                              Text('Events you have created:',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text('Event Name: ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Seeds for the future',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text('Participants: ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                height: 300,
                                child: ListView.builder(
                                  itemCount: participants1.length,
                                  itemBuilder: (context, index){
                                    return Container(
                                      height: 26.0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            Text(participants1[index]),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 440,
                          width: 300,
                          decoration: BoxDecoration (
                            color: Colors.white,
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
                          child: Column(
                            children: <Widget>[
                              Text('Events you have created:',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text('Event Name: ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Conserve Nature Rally',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text('Participants: ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                height: 300,
                                child: ListView.builder(
                                  itemCount: participants1.length,
                                  itemBuilder: (context, index){
                                    return Container(
                                      height: 26.0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            Text(participants2[index]),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
