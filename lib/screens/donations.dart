import 'package:flutter/material.dart';

class Donations extends StatefulWidget {
  @override
  _DonationsState createState() => _DonationsState();
}

class _DonationsState extends State<Donations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                   IconButton(
                     onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios,
                        ),),
                  SizedBox(width: 80.0),
                  Text ('Donations',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        fontFamily: 'DMSerifDisplay',
                      ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
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
                    height: 650.0,
                    width: 350.0,
                  ),
                  Positioned(
                    top: 0.0,
                    child: Container(
                      height: 645.0,
                      width:350.0,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              decoration: BoxDecoration (
                                color: Colors.white,
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
                              height: 225,
                              width: 325.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Every month, EcoAct will pick a climate change nonprofit to donate to. '
                                    '90 percent of the funds raised will be donated to the organization and the other '
                                    '10 percent will go towards the cost of running our business. We sincerely thank you '
                                    'for doing your part in the fight against climate change!',
                                  style: TextStyle(fontSize: 19.5, fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text('  This month we will be donating to: ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
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
                                child: Image.asset('assets/earthjustice.png', fit: BoxFit.cover),
                                height: 200.0,
                                width: 300.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:100.0),
                            child: Container(
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
                                padding: const EdgeInsets.all(4.0),
                                child: Text('   Donate Now',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'DMSerifDisplay',
                                  ),
                                ),
                              ),
                              height: 35,
                              width: 75,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
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
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text('Donate directly to these climate change nonprofits',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 19.5,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              height: 60,
                              width: 75,

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
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
                                child: Image.asset('assets/climatereality.png', fit: BoxFit.cover),
                                height: 110,
                                width: 300.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
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
                                    child: Image.asset('assets/onetreeplanted.png', fit: BoxFit.cover),
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
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
                                    child: Image.asset('assets/onepercent2.png', fit: BoxFit.cover),
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
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
                                child: Image.asset('assets/oceancleanup.png', fit: BoxFit.cover),
                                height: 110,
                                width: 300,
                              ),
                            ),
                          ),
                            SizedBox(height: 15.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


