import 'package:flutter/material.dart';

class SignedPetitions extends StatefulWidget {
  @override
  _SignedPetitionsState createState() => _SignedPetitionsState();
}

class _SignedPetitionsState extends State<SignedPetitions> {
  List petitionName = ['Ban Plastic Bags', 'Do not let the Amazon burn again'];
  List description = ['2 million single-use plastic bags are consumed every minute. These bags are extremely harmful for the environment and take millions of years to decompose. Paper bags leave an even bigger carbon footprint as trees need to be cut down for these to be manufactured. Stores should encourage people to bring their own reusable bag or charge significantly more for each plastic bag',
    'With the global attention focused on COVID-19, the Brazilian government is planning on granting criminals legal ownership of illegally razed rainforest. These people will clear the land by burning it away. Not only will this destroy biodiversity in the Amazon, but will drastically increase C02 emissions into the atmosphere. If deforestation is not stopped soon, the lungs of our planet could soon lose their ability to function.',];
  List adressedTo = ['Federal Governments', 'Brazilian Administration'];
  List signaturesRequired = ['20,000','100,000'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Text('Signed Petitions',
                style: TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 10.0),
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
              child: Column(
                children: <Widget>[
                  Container(
                    height: 615,
                    child: ListView.builder(
                      itemCount: petitionName.length,
                      itemBuilder: (context, index){
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 15.0),
                                Text('Name of petition: ' + petitionName[index]),
                                Text('Description: ' + description[index]),
                                Text('Adressed to: ' + adressedTo[index]),
                                Text('Signatures needed: ' + signaturesRequired[index]),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 40.0,
                                  width: 120.0,
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
                                    child: Text('   Remove',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
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
