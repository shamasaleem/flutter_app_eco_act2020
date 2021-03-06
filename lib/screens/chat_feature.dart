import 'package:flutter/material.dart';
import 'package:flutterappecoact/screens/members.dart';

class ChatFeature extends StatefulWidget {
  @override
  _ChatFeatureState createState() => _ChatFeatureState();
}

class _ChatFeatureState extends State<ChatFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox (height: 30.0),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios,
                    ),),
                  Text ('Activism Group',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'DMSerifDisplay',
                    ),
                  ),
                  SizedBox(width: 25.0),
                  GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => members()),),
                      child: Text('see members')),
                ],
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
                  height: 615.0,
                  width: 350.0,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Account Name'),
                                SizedBox(height: 10.0,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: 200.0,
                                  height: 50.0,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            //Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Account Name'),
                                SizedBox(height: 10.0,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: 200.0,
                                  height: 50.0,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Account Name'),
                                SizedBox(height: 10.0,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: 200.0,
                                  height: 50.0,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            //Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Account Name'),
                                SizedBox(height: 10.0,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: 200.0,
                                  height: 50.0,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Account Name'),
                                SizedBox(height: 10.0,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  width: 200.0,
                                  height: 50.0,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40.0,),

                        Row(
                          children: [
                            Container(
                              width: 250.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Subject',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                      Divider(
                                        thickness: 2.0,
                                        color: Colors.black,
                                      ),
                                      Text('Message'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            IconButton(icon: Icon(Icons.send),)
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
